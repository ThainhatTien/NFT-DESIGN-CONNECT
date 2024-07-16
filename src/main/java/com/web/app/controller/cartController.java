package com.web.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.web.app.entity.CartItem;
import com.web.app.service.CartService;

@Controller
@RequestMapping("/cart")

public class cartController {
    @Autowired
    private CartService cartService;

    @RequestMapping("/add/{userId}/{nftId}/{quantity}")
    public String addToCart(@PathVariable("userId") int userId, @PathVariable("nftId") int nftId,
                            @PathVariable("quantity") int quantity, Model model) {
        String message = cartService.addToCart(userId, nftId, quantity);
        model.addAttribute("message", message);
        return "redirect:/cart/view/" + userId;
    }

    @RequestMapping("/remove/{userId}/{nftId}")
    public String removeFromCart(@PathVariable("userId") int userId, @PathVariable("nftId") int nftId,
                                 Model model) {
        String message = cartService.removeFromCart(userId, nftId);
        model.addAttribute("message", message);
        return "redirect:/cart/view/" + userId;
    }

    @RequestMapping("/update/{userId}/{nftId}/{quantity}")
    public String updateCart(@PathVariable("userId") int userId, @PathVariable("nftId") int nftId,
                             @PathVariable("quantity") int quantity, Model model) {
        String message = cartService.updateCart(userId, nftId, quantity);
        model.addAttribute("message", message);
        return "redirect:/cart/view/" + userId;
    }

    @RequestMapping("/view/{userId}")
    public String viewCart(@PathVariable("userId") int userId, Model model) {
        List<CartItem> cartItems = cartService.viewCart(userId);
        model.addAttribute("cartItems", cartItems);
        System.out.println(cartService.calculateTotalAmount(cartItems));
        model.addAttribute("totalAmount", cartService.calculateTotalAmount(cartItems));
        return "cart";
    }

    @RequestMapping("/clear/{userId}")
    public String clearCart(@PathVariable("userId") int userId, Model model) {
        String message = cartService.clearCart(userId);
        model.addAttribute("message", message);
        return "redirect:/cart/view/" + userId;
    }
}
