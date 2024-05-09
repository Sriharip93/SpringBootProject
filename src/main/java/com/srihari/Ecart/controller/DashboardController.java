package com.srihari.Ecart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.SudoAdmin;

import com.srihari.Ecart.service.SudoAdminService;

@Controller
public class DashboardController {
	
	 
	@Autowired 
	private SudoAdminService sudoAdminService;
	
	@GetMapping("/DashboardLogin") 
	public ModelAndView deshboardLoginform()
	{
		System.out.println("changing code git commit");
		ModelAndView model=new ModelAndView();
		model.setViewName("DashboardLogin");
		return model;
		
	}
	private String id;
	 @PostMapping("/SudoAminlogin")
	public ModelAndView dashboardlogin(@RequestParam String loginId,@RequestParam String password)
	{
		 id=loginId;
		 ModelAndView model= new ModelAndView();
		 SudoAdmin sudoAdmin= sudoAdminService.getadminId(loginId);
		 
		 System.out.println("enter into login");
		 if(sudoAdmin !=null &&  loginId.equals(sudoAdmin.getUserLoginId())  &&  password.equals(sudoAdmin.getUserPassword()))
		 {

			 model.setViewName(sudoAdmin.getUserRoleName());
			  
		 }
		 else
		 {
			
			 model.setViewName("DashboardLogin");
			
		 }
		 return  model;
	}
	 
	 
	 @GetMapping("/invertrymnt") 
		public ModelAndView inventorymenegementform()
		{
		 System.out.println("enter into next page");
			ModelAndView model=new ModelAndView();
			
			model.setViewName("InventoryManagement");
			return model;
			
		}
	 
	 @GetMapping("/backInve") 
		public ModelAndView inventorymenegementform(ModelAndView model)
		{

		 SudoAdmin sudoAdmin= sudoAdminService.getadminId(id);
		 
		 
		 if(id.equalsIgnoreCase(sudoAdmin.getUserLoginId()))
		 {
			 model.setViewName(sudoAdmin.getUserRoleName());
		 }
			
			return model;
			
		}

}
