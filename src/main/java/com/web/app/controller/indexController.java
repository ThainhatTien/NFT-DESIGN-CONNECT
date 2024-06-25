package com.web.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {
	@RequestMapping("/home")
	public String displayHome() {
		return "index";
	}
	
	@RequestMapping("/shopdetail")
	public String displayShopdetail () {
		return "shop-detail";
	}
	
	@RequestMapping("/shop")
	public String displayShopListing() {
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
	
	@RequestMapping("/profile")
	public String displayProfile() {
		return "profile";
	}
	
	@RequestMapping("/cart")
	public String displayCart() {
		return "cart";
	}
}
 