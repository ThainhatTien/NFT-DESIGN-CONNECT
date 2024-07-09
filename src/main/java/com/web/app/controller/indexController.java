package com.web.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.app.dao.CategoryDao;
import com.web.app.dao.NFTDao;
import com.web.app.dao.StyleDao;
import com.web.app.dao.UserDao;
import com.web.app.entity.Category;
import com.web.app.entity.NFT;
import com.web.app.entity.Style;
import com.web.app.entity.User;
import com.web.app.service.SessionService;
import com.web.app.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class indexController {
	@Autowired
	UserDao userDao;

	@Autowired
	private UserService userService;

	@Autowired
	private NFTDao nftDao;

	@Autowired
	private CategoryDao categoryDao;

	@Autowired
	private StyleDao styleDao;

	@Autowired
	private SessionService sessionService;

	@RequestMapping("/home")
	public String displayHome(Model model) {
		List<NFT> nfts = nftDao.findAll();
		model.addAttribute("nfts", nfts);
		return "index";
	}

	@RequestMapping("/shopdetail/{nft_id}")
	public String displayShopdetail(Model model, @PathVariable("nft_id") int nft_id) {
		NFT nft = nftDao.findById(nft_id).get();
		model.addAttribute("nft", nft);
		return "shop-detail";
	}

	@RequestMapping("/shop")
	public String displayShopListing(Model model) {
		List<NFT> nfts = nftDao.findAll();
		model.addAttribute("nfts", nfts);
		List<Style> styles = styleDao.findAll();
		model.addAttribute("styles", styles);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		return "shop";
	}

	@RequestMapping("/contact")
	public String displayContact() {
		return "contact";
	}

	@RequestMapping("/about")
	public String displayAbout() {
		return "about";
	}

	@RequestMapping("/profile/{userId}")
	public String displayProfile(Model model, @PathVariable("userId") int userId) {
		User user = userDao.findById(userId).get();
		if (user.getRole().equalsIgnoreCase("DESIGN")) {
			model.addAttribute("role", user.getRole());
			List<NFT> nfts = nftDao.findByUserId(userId);
			model.addAttribute("nfts", nfts);
		}
		model.addAttribute("user", user);
		return "profile";
	}

	@RequestMapping("/profileDesign/{userId}")
	public String displayProfileDesign(Model model, @PathVariable("userId") int userId) {
		User user = userDao.findById(userId).get();
		List<NFT> nfts = nftDao.findByUserId(userId);
		model.addAttribute("nfts", nfts);
		model.addAttribute("user", user);
		return "profile_design";
	}

	@RequestMapping("/cart")
	public String displayCart() {
		return "cart";
	}

}
