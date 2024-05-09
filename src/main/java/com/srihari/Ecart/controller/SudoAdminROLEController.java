package com.srihari.Ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.SudoAdmin;
import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.service.SudoAdminROLEservice;

@Controller
public class SudoAdminROLEController {

	@Autowired
	private SudoAdminROLEservice sudoAdminROLEservice;
	
	@GetMapping("/next")
	public ModelAndView SudoAdminRoleList()
	{
	System.out.println("enterd into controller 3");
		
	
	ModelAndView model=new ModelAndView();
		List<SudoAdminROLE> list=sudoAdminROLEservice.getsudoRoleList();
		
		model.addObject("sudo", list);
		model.setViewName("SudoAdminRolelist");
		System.out.println("back to controller 3");
		return model;
		
	}
	
	@GetMapping("/newRole")
	public ModelAndView addNewRoll()
	{
		ModelAndView model =new ModelAndView();
		
	      model.setViewName("addSudoAdminRole");
			
			return model;
	}
	
	@PostMapping("/addrole")
	public String saveRole(@RequestParam String rolename)

	{
		
		SudoAdminROLE adminROLE=new SudoAdminROLE();
		
		adminROLE.setRoleName(rolename);
		
		sudoAdminROLEservice.saveRole(adminROLE);
		return "redirect:/next";
		
	}
	
	@GetMapping("/editRole")
	public ModelAndView updateSudoUser(@RequestParam String loginId)
	{
		
		ModelAndView model = new ModelAndView();
		try
		{

			SudoAdminROLE adminROLE=sudoAdminROLEservice.RoleIdget(Integer.parseInt(loginId));
			
			System.out.println("enter into controlle update method :"+adminROLE);
			System.out.println(adminROLE);
			
			model.addObject("role", adminROLE);
			
			model.setViewName("SudoRoleEdite");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return model;
	}
	
	@PostMapping("/updateRole")
	public String saveRole(@RequestParam String RoleId,@RequestParam String roleName)
	
	{
		SudoAdminROLE adminROLE=new SudoAdminROLE();
		
		adminROLE.setRoleId(Integer.parseInt(RoleId));
		
		adminROLE.setRoleName(roleName);
		
		
		sudoAdminROLEservice.updateRolename(adminROLE);

		return "redirect:/next";
		
	}
	
	@GetMapping("/deleteid")
	public ModelAndView deleteform(@RequestParam String loginId)
	{
		
		 ModelAndView model = new ModelAndView();
			
			
		
		SudoAdminROLE adminROLE=sudoAdminROLEservice.deleteRollById(Integer.parseInt(loginId));
		
		model.addObject("delete", adminROLE);
		
		model.setViewName("RoleDeleteform");
		
		return model;
		
	}
	
	@PostMapping("/delete2")
	public String getdeletebyid(@RequestParam String Rollid)
	{
		
		sudoAdminROLEservice.deleteRoleById(Integer.parseInt(Rollid));
		
		return "redirect:/next";
		
	}
	@GetMapping("/mm")
	public String cancel()
	{
		
		
		return "redirect:/next";
		
	}
	
	
}
