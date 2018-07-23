package com.sch.springmvc.backtoschool.validations;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.sch.springmvc.backtoschool.model.User;

public class EqualPasswordsValidator implements ConstraintValidator<EqualPasswords, User> {

	 @Override
	    public void initialize(EqualPasswords constraint) {
	    }
	
	@Override
	public boolean isValid(User usr, ConstraintValidatorContext arg1) {
		// TODO Auto-generated method stub
		return usr.getPassword().equals(usr.getConfirm());
	}
	
	

}
