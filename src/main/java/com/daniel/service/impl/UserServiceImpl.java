package com.daniel.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.daniel.dao.IUserDao;
import com.daniel.pojo.User;
import com.daniel.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}

}
