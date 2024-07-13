package com.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.dao.UserDao;
import com.springmvc.entities.User;

@Service
public class userServiceImpl implements userService {

	@Autowired
	private UserDao userDao;
	
	public int registerUser(User user) {
		int userSave = userDao.saveUser(user);
		return userSave;
	}	
}
