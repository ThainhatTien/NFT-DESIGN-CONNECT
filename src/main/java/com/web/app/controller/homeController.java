package com.web.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.web.app.dao.CategoryDao;
import com.web.app.dao.NFTDao;
import com.web.app.dao.SpecificationsDao;
import com.web.app.dao.StyleDao;
import com.web.app.entity.Category;
import com.web.app.entity.NFT;
import com.web.app.entity.Specifications;
import com.web.app.entity.Style;
import com.web.app.entity.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class homeController {
	@Autowired
	StyleDao styleDao;

	@Autowired
	CategoryDao categoryDao;

	@Autowired
	NFTDao nftDao;

	@Autowired
	SpecificationsDao specificationsDao;

	@GetMapping("/Specifications")
	public String displaySpecifications(Model model) {
		model.addAttribute("specification", new Specifications());
		return "add_specification";
	}
	
	@PostMapping("/specifications/add")
	public String addSpecification(@ModelAttribute("specification") Specifications specification,
			HttpSession session) {
		session.setAttribute("currentSpecification", specification);
		specificationsDao.save(specification);
		return "redirect:/adddetail"; 
	}
	
	@GetMapping("/adddetail")
	public String displayAddDetail(Model model) {
		model.addAttribute("nft", new NFT());
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		List<Style> styles = styleDao.findAll();
		model.addAttribute("styles", styles);
		return "add_detail";
	}

	@PostMapping("/nft/add")
	public String addDetail(@ModelAttribute("nft") NFT nft) {
		// Lưu thông tin NFT vào cơ sở dữ liệu
		nftDao.save(nft);
		// Chuyển hướng về trang profile của designer
		return "redirect:/profile/" + nft.getDesigner_id();
	}

}
