package com.web.app.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.app.dao.CategoryDao;
import com.web.app.dao.StyleDao;
import com.web.app.dao.UserDao;
import com.web.app.entity.Category;
import com.web.app.entity.Style;
import com.web.app.entity.User;

@Controller
public class homeAdminController {
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private StyleDao styleDao;
	
	@Autowired
	private CategoryDao categoryDao;
	
	@RequestMapping("/home/user")
	public String displayHome(Model model) {
		List<User> users = userDao.findAll();
		model.addAttribute("users", users);
		return"admin/index";
	}
	
	@RequestMapping("/home/category")
	public String displayCategory(Model model) {
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("category", new Category());
		model.addAttribute("categories", categories);
		return "admin/categorymanager";
	}
	
	@RequestMapping("/home/style") 
	public String displayStyle(Model model) {
		List<Style> styles = styleDao.findAll();
		model.addAttribute("styles", styles);
		model.addAttribute("style", new Style());
		return "admin/stylemanager";
	}
}
