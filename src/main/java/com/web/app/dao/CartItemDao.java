package com.web.app.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.web.app.entity.CartItem;

public interface CartItemDao extends JpaRepository<CartItem, Integer> {
	@Query("SELECT c FROM CartItem c WHERE c.user.user_id = :userId")
    List<CartItem> findByUserId(int userId);
	
	@Query("SELECT c FROM CartItem c WHERE c.user.user_id = :userId AND c.nft.nft_id = :nftId")
    CartItem findByUserIdAndNftId(@Param("userId") int userId, @Param("nftId") int nftId);
}
