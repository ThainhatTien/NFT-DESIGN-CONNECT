package com.web.app.service;

import java.util.List;
import com.web.app.entity.CartItem;

public interface CartService {
    String addToCart(int userId, int nftId, int quantity);
    String removeFromCart(int userId, int nftId);
    String updateCart(int userId, int nftId, int quantity);
    List<CartItem> viewCart(int userId);
    String clearCart(int userId);
    String calculateTotalAmount(List<CartItem> cartItems);
}
