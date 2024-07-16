package com.web.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.web.app.entity.Wallet;

public interface WalletDao extends JpaRepository<Wallet, Integer> {
	
	@Query("SELECT w FROM Wallet w WHERE w.user.user_id = :userId")
    List<Wallet> findByUserId(int userId);
	
}
