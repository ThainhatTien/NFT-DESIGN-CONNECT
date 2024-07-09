package com.web.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.web.app.dao.UserDao;
import com.web.app.entity.User;
import com.web.app.service.SessionService;
import com.web.app.service.UserService;
import jakarta.servlet.http.HttpSession;

@Controller
public class loginController {

	@Autowired
	UserService userService;

	@Autowired
	UserDao userDao;

	@Autowired
    private SessionService sessionService;
	
	// Đăng nhập User

	@GetMapping("/login")
	public String displayLogin(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@PostMapping("/user/login")
	public String loginUser(Model model, @ModelAttribute("user") User user, HttpSession session) {
		user = userService.checkLogin(user.getUsername(), user.getPassword());
		if (user != null) {
			sessionService.set("currentUser", user);
			session.setAttribute("currentUser", user);
			return "redirect:/home";
		} else {
			model.addAttribute("message", "Sai tài khoản hoặc mật khẩu");
			return "login";
		}
	}

	@RequestMapping("/logout")
	public String logoutUser(HttpSession session) {
		session.removeAttribute("currentUser");
		return "redirect:/home";
	}

	// Đăng ký User

	@GetMapping("/register")
	public String displayRegister(Model model, HttpSession session) {
		model.addAttribute("user", new User());
		return "register";
	}

	@PostMapping("/user/signup")
	public String registerUser(Model model, @ModelAttribute("user") User user, HttpSession session) {
		if (user.getFullname().isEmpty()
				||user.getAvatar().isEmpty()
				||user.getDescription().isEmpty()
				||user.getEmail().isEmpty()
				||user.getFacebook().isEmpty()
				||user.getPassword().isEmpty()
				||user.getPhone().isEmpty()
				||user.getRole().isEmpty()) {
			model.addAttribute("message", "Không được để trống");
			return "register";
		} else {
			userDao.save(user);
			session.setAttribute("currentUser", user);
			return "redirect:/home";
		}

	}

}
