package com.sch.springmvc.backtoschool.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sch.springmvc.backtoschool.model.User;
import com.sch.springmvc.backtoschool.services.UserService;

@Controller
@SessionAttributes("User")
public class Login {
	@Autowired
	UserService userSrc;
	@InitBinder
	public void initBinder(WebDataBinder databinder)
	{
		StringTrimmerEditor ste=new StringTrimmerEditor(true);
		databinder.registerCustomEditor(String.class, ste);
	}
	@RequestMapping("/")
	public String showHomePage()
	{
		return "header";
	}
	
	@RequestMapping("/new")
	public String showLoginPage(Model model)
	//public String showLoginPage()
	{
		model.addAttribute("user", new User());
		return "login";
	}
	
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	/*public String registerUser(Model model,
			@RequestParam("userName") String usrName,
			@RequestParam("password") String pass)*/
	
	public String registerUser(@Valid @ModelAttribute("user") User user,BindingResult result)
	{
		System.out.println("IN REGISTER METHOD");
		
		/*String usrName=request.getParameter("userName");
	String pass=request.getParameter("password");
		model.addAttribute("userName", usrName);
		model.addAttribute("password", pass);*/
		/*System.out.println("Values are "+usrName+"and "+pass);
		User usr=new User();
		usr.setUserName(usrName);
		usr.setPassword(pass);*/
		/*model.addAttribute("user",usr);
		return "Sample";*/
		System.out.println("I AM IN111 "+result+"user is "+user.getUserName());
		if(result.hasErrors())
		{
			System.out.println("I AM IN"+result);
             return "login";
		}
		else
			userSrc.saveAccount(user);
			return "redirect:/list";
		}

}
