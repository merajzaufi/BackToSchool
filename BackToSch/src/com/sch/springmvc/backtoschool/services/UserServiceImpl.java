package com.sch.springmvc.backtoschool.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sch.springmvc.backtoschool.dao.UserDao;
import com.sch.springmvc.backtoschool.model.User;

@Service   //Since it is service implementation
public class UserServiceImpl implements UserService{
    @Autowired
    UserDao userDao;
	@Override
	@Transactional   //To avoid manual opening and closing of transaction since it is already done in UserDaoImpl class
	public boolean saveAccount(User user) {
		// TODO Auto-generated method stub
		return userDao.registerUser(user);
	}
	

}
