package com.web.app.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.app.dao.CartItemDao;
import com.web.app.dao.NFTDao;
import com.web.app.dao.UserDao;
import com.web.app.entity.CartItem;
import com.web.app.entity.NFT;
import com.web.app.entity.User;
import com.web.app.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartItemDao cartItemDao;

	@Autowired
	private UserDao userDao;

	@Autowired
	private NFTDao nftDao;

	@Override
	public String addToCart(int userId, int nftId, int quantity) {
		User user = userDao.findById(userId).orElse(null);
		if (user == null) {
			return "User not found";
		}

		NFT nft = nftDao.findById(nftId).orElse(null);
		if (nft == null) {
			return "NFT not found";
		}

		CartItem cartItem = cartItemDao.findByUserIdAndNftId(userId, nftId);
		if (cartItem != null) {
			cartItem.setQuantity(cartItem.getQuantity() + quantity);
		} else {
			cartItem = new CartItem();
			cartItem.setNft(nft);
			cartItem.setQuantity(quantity);
			cartItem.setPrice(nft.getPrice() != null ? nft.getPrice() : 0.0); // Đảm bảo giá trị không phải là NULL
			cartItem.setUser(user);
		}
		cartItemDao.save(cartItem);
		return "Item added to cart";
	}

	@Override
	public String removeFromCart(int userId, int nftId) {
		CartItem cartItem = cartItemDao.findByUserIdAndNftId(userId, nftId);
		if (cartItem != null) {
			cartItemDao.delete(cartItem);
			return "Item removed from cart";
		} else {
			return "Item not found in cart";
		}
	}

	@Override
	public String updateCart(int userId, int nftId, int quantity) {
		CartItem cartItem = cartItemDao.findByUserIdAndNftId(userId, nftId);
		if (cartItem != null) {
			cartItem.setQuantity(quantity);
			cartItemDao.save(cartItem);
			return "Cart updated";
		} else {
			return "Item not found in cart";
		}
	}

	@Override
	public List<CartItem> viewCart(int userId) {
		return cartItemDao.findByUserId(userId);
	}

	@Override
	public String clearCart(int userId) {
		List<CartItem> cartItems = cartItemDao.findByUserId(userId);
		cartItemDao.deleteAll(cartItems);
		return "Cart cleared";
	}

	@Override
	public String calculateTotalAmount(List<CartItem> cartItems) {
	    double totalAmount = cartItems.stream()
	                                  .mapToDouble(item -> item.getPrice() * item.getQuantity())
	                                  .sum();
	    return String.format("%.2f", totalAmount); // Format to two decimal places
	}

}
