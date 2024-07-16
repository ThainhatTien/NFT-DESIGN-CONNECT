package com.web.app.error;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@ControllerAdvice
public class GlobalExceptionHandler {
	// Xử lý ngoại lệ DataIntegrityViolationException toàn cục
	@ExceptionHandler(DataIntegrityViolationException.class)
	public String handleDataIntegrityViolationException(DataIntegrityViolationException ex,
			RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("error", "Không thể xóa danh mục đã có sản phẩm liên kết.");
		return "redirect:/error";
	}

	// Xử lý ngoại lệ chung
	@ExceptionHandler(Exception.class)
	public String handleException(Exception ex, RedirectAttributes redirectAttributes) {
		redirectAttributes.addFlashAttribute("error", "Đã xảy ra lỗi khi xử lý yêu cầu.");
		return "redirect:/error";
	}
}
