package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserRegisterDao;
import com.entities.User;

@Service
public class RegisterServiceImpl implements RegisterService {

	@Autowired
	UserRegisterDao userRegisterDaoImpl;
	@Override
	public String RegisterUserDetails(User user) {
		
		return userRegisterDaoImpl.getUserDetails(user);
	}

}
