package com.sch.springmvc.backtoschool.model;

import java.util.Date;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.sch.springmvc.backtoschool.validations.EqualPasswords;
import com.sch.springmvc.backtoschool.validations.ValidPassword;
@EqualPasswords
public class User {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
	@NotEmpty(message="UserName can't be blank")
	@Size(min=2,max=50,message="Invalid lenght for userName")
	@Pattern(regexp="[A-Za-z(\\s)]+",message="Invalid name")
	private String userName;
	
	/*@Size(min=6,max=8,message="Invalid lenght for Password")*/
	@ValidPassword
	@NotNull(message="Password can't be blank")
	private String password;
	@NotNull(message="Password can't be blank")
	
	
	//
	/* @DateTimeFormat(pattern="MM/dd/yyyy")
	@Past(message="Can't be present date")
	private Date date;*/
	private String confirm;
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	private String role;
	@NotNull(message="Email can't be blank")
	private String email;
	public User() {
		userName="";
		password="";
		role="";
		email="";
		
	}
	public User(String userName, String password, String role, String email) {
		
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
