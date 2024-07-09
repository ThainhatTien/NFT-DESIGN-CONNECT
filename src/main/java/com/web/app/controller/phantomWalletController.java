package com.web.app.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.app.dao.UserDao;
import com.web.app.dao.WalletDao;
import com.web.app.entity.User;
import com.web.app.entity.Wallet;

@Controller
public class phantomWalletController {
    @Autowired
    private WalletDao walletDao;

    @Autowired
    private UserDao userDao;

    @PostMapping("/connect")
    @ResponseBody
    public Map<String, String> connect(@RequestBody Map<String, String> payload) {

        String publicKey = payload.get("publicKey");
        String userIdStr = payload.get("userId");

        if (publicKey == null || userIdStr == null) {
            return Map.of("status", "error", "message", "Missing publicKey or userId");
        }

        int userId;
        try {
            userId = Integer.parseInt(userIdStr);
        } catch (NumberFormatException e) {
            return Map.of("status", "error", "message", "Invalid userId format");
        }

        User user = userDao.findById(userId).orElse(null);

        if (user == null) {
            return Map.of("status", "error", "message", "User not found");
        }

        // Kiểm tra xem người dùng đã có kết nối wallet chưa
        List<Wallet> existingWallet = walletDao.findByUserId(userId);

        if (existingWallet != null) {
            return Map.of("status", "success", "message", "Already connected to a wallet");
        } else {
			
		}

        Wallet wallet = new Wallet(publicKey, user);
        walletDao.save(wallet);

        return Map.of("status", "success", "message", "Connected to Phantom Wallet successfully");
    }
}
