package com.web.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.app.entity.Specifications;

public interface SpecificationsDao extends JpaRepository<Specifications, Integer>{

	Specifications findByFloorsAndAreaAndLengthAndFrontage(int floors, double area, double length, double frontage);

}
