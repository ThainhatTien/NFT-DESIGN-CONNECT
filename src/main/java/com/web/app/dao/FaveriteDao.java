package com.web.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.web.app.entity.Favorite;

public interface FaveriteDao extends JpaRepository<Favorite, Integer>{

}
