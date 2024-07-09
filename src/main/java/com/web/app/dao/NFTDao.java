package com.web.app.dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.web.app.entity.NFT;

public interface NFTDao extends JpaRepository<NFT, Integer> {
	@Query("SELECT n FROM NFT n WHERE n.designer.user_id = :userId")
    List<NFT> findByUserId(@Param("userId") int userId);
}
