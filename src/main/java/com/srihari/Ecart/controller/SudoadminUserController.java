package com.srihari.Ecart.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.Admin;
import com.srihari.Ecart.entity.SudoAdmin;
import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.service.SudoAdminROLEservice;
import com.srihari.Ecart.service.SudoAdminService;


@Controller
public class SudoadminUserController {
	
	@Autowired
	private SudoAdminROLEservice sudoAdminROLEservice;
	
	@Autowired
	private SudoAdminService sudoAdminService;
	
	private static String adminName;
	
	@GetMapping("/hello")
	public ModelAndView sudoUserList(@RequestParam String name)
	{
	
		adminName=name;
		ModelAndView model =new ModelAndView();
		System.out.println("2nd controller");
		
		
List<SudoAdmin>	list=sudoAdminService.getsudolist();


  System.out.println("2nd controller :"+list);

      model.addObject("sudo", list);
      model.addObject("Name", name);
      
      System.out.println("admin name :"+name);
      
      model.setViewName("SudoAdminlist");
		System.out.println(" back to controller 2nd controller");
		return model;
	} 
	
	
	@GetMapping("/newuser")
	public ModelAndView userNewForm()
	{
		ModelAndView model =new ModelAndView();
		
		List<SudoAdminROLE> list=sudoAdminROLEservice.getsudoRoleList();
		model.addObject("rolesList", list);
		System.out.println("rootAdmin"+list);
      model.setViewName("addSudoAdmin");
		
		return model;
		
	}
	
	@PostMapping("/AddUser")
	public String saveSudoUserRecords(@RequestParam String loginId,@RequestParam String password,@RequestParam String roleName,@RequestParam String userName,@RequestParam String mobileNumber,@RequestParam String email)
	
	{
		
	
		System.out.println(loginId);
		System.out.println(password);
		System.out.println(roleName);
		System.out.println(userName);
		
		
		SudoAdmin sudoAdmin=new SudoAdmin();
		
		sudoAdmin.setUserLoginId(loginId);
		
		sudoAdmin.setUserPassword(password);
		
		sudoAdmin.setUserRoleName(roleName);
		
		sudoAdmin.setUserName(userName);
		
		sudoAdmin.setUserContactMobileNum(Long.parseLong(mobileNumber));
		
		sudoAdmin.setUserContactEmailId(email);
		
		System.out.println(sudoAdmin);
		
		sudoAdminService.saveSudoUser(sudoAdmin);
	 
	
		
		
		return "redirect:/hello?name="+adminName;
		
	}
	
	@GetMapping("/editSodoUser")
	public ModelAndView updateSudoUser(@RequestParam String loginId)
	{
		
		
		SudoAdmin sudoAdmin=sudoAdminService.getEmployeeById(loginId);
		
		
		
		System.out.println(sudoAdmin);
		
     ModelAndView model = new ModelAndView();
		
		model.addObject("emp", sudoAdmin);
		
		model.setViewName("SudoUseredite");
		return model;
		
    
	}
	
	@PostMapping("/updateSudoUser")
	public String saveSudoUser(@RequestParam String loginId,@RequestParam String pass,@RequestParam String roleName,@RequestParam String userName,@RequestParam String mobileNumber,@RequestParam String email)
	{
		
		SudoAdmin sudoAdmin=new SudoAdmin();
		
		sudoAdmin.setUserLoginId(loginId);
		
		sudoAdmin.setUserPassword(pass);
		sudoAdmin.setUserRoleName(roleName);
		sudoAdmin.setUserName(userName);
		sudoAdmin.setUserContactMobileNum(Long.parseLong(mobileNumber));
	
		sudoAdmin.setUserContactEmailId(email);
		
		sudoAdminService.updateSudoUser(sudoAdmin);
		
		return "redirect:/hello?name="+adminName;
		
	}
	@GetMapping("/deleteadminid")
	public ModelAndView deteteSudoUser(@RequestParam String loginId)
	{
		
		
	SudoAdmin sudoAdmin=sudoAdminService.deleteEmployeeById(loginId);
		
     ModelAndView model = new ModelAndView();
		
		model.addObject("delete", sudoAdmin);
		
		model.setViewName("Deleteform");
		
	   
		
		return model ;
    
	}
	@PostMapping("/delete")
	public String getdeletebyid(@RequestParam String userid)
	{
		
		sudoAdminService.deleteSudoUsersById(userid);
		
		return "redirect:/hello?name="+adminName;
		
	}
	
	private String sudoAdminloginId;
	@GetMapping("/changePassword")
	public ModelAndView userchangepassword(@RequestParam String loginId)
	{
		sudoAdminloginId=loginId;
		
		ModelAndView model =new ModelAndView();
		
      model.setViewName("sudochangePassword2");
		
		return model;
		
	}
	
	@PostMapping("/changepass")
	public String sudoUserchangepassword(@RequestParam String newPassword)
	
	{
		
		
		
		SudoAdmin sudoAdmin=sudoAdminService.getEmployeeById(sudoAdminloginId);
		
		sudoAdmin.setUserPassword(newPassword);
		
		sudoAdminService.uddatepassword(sudoAdmin);
		
	
		return "redirect:/hello?name="+adminName;
	}
	
	@GetMapping("/hh")
	public String cancel()
	{
		
		
		return "redirect:/hello?name="+adminName;
		
	}
	
	}	
	
	

