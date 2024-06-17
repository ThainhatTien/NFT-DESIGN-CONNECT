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
	
	@RequestMapping("/shoplisting")
	public String displayShopListing() {
		return "shop-listing";
	}
}
