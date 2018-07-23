package com.sch.springmvc.backtoschool.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sch.springmvc.backtoschool.entity.UserEntity;
import com.sch.springmvc.backtoschool.model.User;

@Repository   //To import DAO's to DI conatiner
public class UserDaoImpl implements UserDao {
    
	@Autowired
	private SessionFactory sessionFactory;  //For Database connection
	
	@Override
	public boolean registerUser(User user) {

        boolean saveFlag=true;
        UserEntity userDetails=new UserEntity();
          userDetails.setUserName(user.getUserName());
          userDetails.setPassword(user.getPassword());
          userDetails.setRole("Parent");
          userDetails.setEmail("abc@xyz.gmail.com");
        try {
			Session currentSession=sessionFactory.getCurrentSession();
			currentSession.save(userDetails);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			saveFlag=false;
		}
		return saveFlag;
	}

}
