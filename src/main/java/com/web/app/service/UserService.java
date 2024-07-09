package com.web.app.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.app.dao.UserDao;
import com.web.app.entity.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public User checkLogin(String username, String password) {
		return userDao.findByUsernameAndPassword(username, password);
	}

	public User checkLoginAdmin(String username, String password) {
		return userDao.findAdminByUsernameAndPassword(username, password);
	}

	public Optional<User> findById(Integer id) {
		return userDao.findById(id);
	}

}
