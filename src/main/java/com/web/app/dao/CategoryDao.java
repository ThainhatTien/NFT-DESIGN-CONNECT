package com.web.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.app.entity.Category;

public interface CategoryDao extends JpaRepository<Category, Integer>{

}
