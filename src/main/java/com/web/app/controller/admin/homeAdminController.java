package com.web.app.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.app.dao.CategoryDao;
import com.web.app.dao.NFTDao;
import com.web.app.dao.StyleDao;
import com.web.app.dao.UserDao;
import com.web.app.entity.Category;
import com.web.app.entity.NFT;
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
	
	@Autowired
	private NFTDao nftDao;

	// User

	@RequestMapping("/home/user")
	public String displayHome(Model model) {
		List<User> users = userDao.findAll();
		model.addAttribute("users", users);
		model.addAttribute("user", new User());
		return "admin/index";
	}

	@RequestMapping("/user/edit/{userId}")
	public String editUser(Model model, @PathVariable("userId") Integer userId) {
		User user = userDao.findById(userId).get();
		model.addAttribute("user", user);
		List<User> users = userDao.findAll();
		model.addAttribute("users", users);
		return "admin/index";
	}

	@RequestMapping("/user/update")
	public String updateUser(User user) {
		userDao.save(user);
		return "redirect:/home/user";
	}

	@RequestMapping("/user/reset")
	public String resetUser() {
		return "redirect:/home/user";
	}

	@RequestMapping("/user/delete/{userId}")
	public String deleteUser(@PathVariable("userId") Integer userId) {
		userDao.deleteById(userId);
		return "redirect:/home/user";
	}

	// end User

	// category

	@RequestMapping("/home/category")
	public String displayCategory(Model model) {
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("category", new Category());
		model.addAttribute("categories", categories);
		return "admin/categorymanager";
	}

	@RequestMapping("/category/edit/{categoryId}")
	public String editCategory(Model model, @PathVariable("categoryId") Integer categoryId) {
		Category category = categoryDao.findById(categoryId).get();
		model.addAttribute("category", category);
		List<Category> categories = categoryDao.findAll();
		model.addAttribute("categories", categories);
		return "admin/categorymanager";
	}

	@RequestMapping("/category/update")
	public String updateCategory(Category category) {
		categoryDao.save(category);
		return "redirect:/home/category";
	}

	@RequestMapping("/category/reset")
	public String resetCategory() {
		return "redirect:/home/category";
	}

	@GetMapping("/category/delete/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") Integer categoryId,
			RedirectAttributes redirectAttributes) {
		try {
			categoryDao.deleteById(categoryId);
		} catch (DataIntegrityViolationException e) {
			// Ngoại lệ xảy ra khi có sự vi phạm Integrity Constraint (ví dụ như FK
			// constraint)
			redirectAttributes.addFlashAttribute("error", "Không thể xóa danh mục đã có sản phẩm liên kết.");
			return "redirect:/home/category";
		} catch (Exception e) {
			// Xử lý các ngoại lệ khác
			redirectAttributes.addFlashAttribute("error", "Đã xảy ra lỗi khi xử lý yêu cầu.");
			return "redirect:/home/category";
		}

		return "redirect:/home/category";
	}

	// end catagory

	// Style

	@RequestMapping("/home/style")
	public String displayStyle(Model model) {
		List<Style> styles = styleDao.findAll();
		model.addAttribute("styles", styles);
		model.addAttribute("style", new Style());
		return "admin/stylemanager";
	}

	@RequestMapping("/style/edit/{styleId}")
	public String editStyle(Model model, @PathVariable("styleId") Integer styleId) {
		Style style = styleDao.findById(styleId).get();
		model.addAttribute("style", style);
		List<Style> styles = styleDao.findAll();
		model.addAttribute("styles", styles);
		return "admin/stylemanager";
	}

	@RequestMapping("/style/update")
	public String updateStyle(Style style) {
		styleDao.save(style);
		return "redirect:/home/style";
	}

	@RequestMapping("/style/reset")
	public String resetStyle() {
		return "redirect:/home/style";
	}

	@RequestMapping("/style/delete/{styleId}")
	public String deleteStyle(@PathVariable("styleId") Integer styleId, 
			RedirectAttributes redirectAttributes) {
		try {
			styleDao.deleteById(styleId);
		} catch (DataIntegrityViolationException e) {
			// Ngoại lệ xảy ra khi có sự vi phạm Integrity Constraint (ví dụ như FK constraint)
			redirectAttributes.addFlashAttribute("error", "Không thể xóa danh mục đã có sản phẩm liên kết.");
			return "redirect:/home/style";
		} catch (Exception e) {
			// Xử lý các ngoại lệ khác
			redirectAttributes.addFlashAttribute("error", "Đã xảy ra lỗi khi xử lý yêu cầu.");
			return "redirect:/home/style";
		}

		return "redirect:/home/style";
	}

	// end Style
	
	//nft
	@RequestMapping("/home/nft")
	public String displayNft(Model model) {
		model.addAttribute("nft", new NFT());
		List<NFT> nfts = nftDao.findAll();
		model.addAttribute("nfts", nfts);
		return"admin/nftmanager";
	}
}
