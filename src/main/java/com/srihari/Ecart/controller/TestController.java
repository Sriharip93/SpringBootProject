package com.srihari.Ecart.controller;

import java.net.http.HttpClient.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.Admin;
import com.srihari.Ecart.service.AdminService;

import jakarta.persistence.EntityNotFoundException;
import jakarta.servlet.http.HttpSession;


@Controller
public class TestController {
	
@Autowired
private AdminService adminService; 



   //Dispaly welcome page
	
	@GetMapping("/")
	public ModelAndView welcome()
	{
		
		System.out.println("enterd into home");
		ModelAndView view=new ModelAndView();
		view.setViewName("welcome");

		
		return view;
		 
	}
	
	//diplay login page	
	
	@GetMapping("/login")
	public ModelAndView adminlist()
	{
		
		ModelAndView view=new ModelAndView();
		
		view.setViewName("login");
		
		
		return view;
	}
	
 	
 //login page logic code
	
@PostMapping("/save")
public String adminset(@RequestParam String adminId,@RequestParam String pass)
{
	 ModelAndView view = new ModelAndView() ;
	try
	{
		
	System.out.println(adminId);
	System.out.println(pass);
	
	
	Admin admin=adminService.getadminlist( adminId);
	
	System.out.println("back to controller");
	
	if(adminId !=null && adminId.equalsIgnoreCase(admin.getAdmin_LOGIN_ID()) && pass.equals(admin.getAdmin_PASSWORD()))
		
	{
           
		
		view.addObject("admin", admin);
		
		System.out.println(admin.getAdmin_NAME());
		
		return "redirect:/hello?name="+admin.getAdmin_NAME();     
	}
	else
	{
		return "redirect:/login";
	}
	
	// rissing exception solve this catch block
}
	catch(EntityNotFoundException ex)
	{
		view.setViewName("login");
		view.addObject("message", "Admin Id Not found");
	}
	catch(Exception e)
	{
		e.printStackTrace();
		 view.setViewName("login"); 
	}
	return "redirect:/login";
	
}


//resetPassword display

@GetMapping("/reset")
public ModelAndView adminresrt()
{
	
	ModelAndView view=new ModelAndView();
	
	view.setViewName("reset");
	
	
	return view;
}


//resetPassword logic code


@PostMapping("/update")
public ModelAndView adminupdate(@RequestParam String adminId,@RequestParam String oldPassword,@RequestParam String newPassword )
{

	ModelAndView view=new ModelAndView();
	
	System.out.println(adminId);
	System.out.println(oldPassword);
	System.out.println(newPassword);  
	
	
	Admin admin=adminService.getadminid( adminId);
	
	if(admin !=null && oldPassword.equals(admin.getAdmin_PASSWORD()) )
	{
	     admin.setAdmin_PASSWORD(newPassword);
		 adminService.updateId(admin);
		view.setViewName("welcome");
		
	}
	
	else
	{
		view.setViewName("reset");
	}
	return view;
}
	

// forget PassWord display

@GetMapping("/forgotPassword")
public ModelAndView adminforgetview()
{
	
	ModelAndView view=new ModelAndView();
	
	view.setViewName("forgotPassword");
	
	
	return view;
}


//forget PassWord logic code

 private String adminUserId;
 
@PostMapping("/forget")
public ModelAndView validatePhoneNumber(@RequestParam String adminId,@RequestParam String number) {

	ModelAndView view = new ModelAndView();

	try {
	System.out.println(number);
	System.out.println(adminId);
	
	adminUserId=adminId;
	
	Admin admin=adminService.getadminid( adminId);
	
	if (admin != null && adminId.equals(admin.getAdmin_LOGIN_ID())
			&& Long.parseLong(number)==admin.getAdmin_MOBILE_NUM1()) {
		
		
		view.setViewName("changePassword");
	} else {
		view.setViewName("forgotPassword");
		
		
	}
	
	
	}
	catch (EntityNotFoundException ex) {
		// when the adminid is not found in that case

		view.setViewName("failed");
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}

	return view;
}


//change Password logic code

@PostMapping("/change")
public ModelAndView changePassword(@RequestParam String newPassword) {
	
	ModelAndView view=new ModelAndView();
	
	try {
	System.out.println(adminUserId);
	
	
	Admin admin = adminService.getadminlist(adminUserId);
	
	admin.setAdmin_PASSWORD(newPassword);
		
	
		
		adminService.updateId(admin);
		
		view.setViewName("welcome");
	

	}
	catch (Exception e) {
		e.printStackTrace();
	}
	return view;
}
}
