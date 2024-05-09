package com.srihari.Ecart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.ItemCategory;
import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.service.ItemCategoryService;



@Controller
public class ItemCategoryController {
	
	@Autowired
	private ItemCategoryService inventoryService;
	
 ModelAndView model=new ModelAndView();
 
	@GetMapping("/inventorylist")
	public ModelAndView inventorylistform()
	{
		
List<ItemCategory> list=inventoryService.getsudoRoleList();
		
		model.addObject("inventory", list);
		
		model.setViewName("ItemCategotyList");
		return model;
		
	}
	
	@GetMapping("/newInventoty")
	public ModelAndView addNewRoll()
	{
		ModelAndView model =new ModelAndView();
		
	      model.setViewName("AddItemCategory");
			
			return model;
	}
	
	@PostMapping("/addItem")
	public String saveRole(@RequestParam String itemCategory,@RequestParam String itemCategoryShortCode,@RequestParam String description)

	{
		
		ItemCategory inventory =new ItemCategory();
		
		inventory.setItemCategory(itemCategory);
		
		inventory.setItemCategoryShortCode(itemCategoryShortCode);
		
		inventory.setItemCategoryDescription(description);
		
		inventoryService.saveItem(inventory);
		
		
		return "redirect:/inventorylist";
		
	}
	
	@GetMapping("/editItem")
	public ModelAndView updateSudoUser(@RequestParam String loginId)
	{
		
		ModelAndView model = new ModelAndView();
		try
		{

			ItemCategory inventory=inventoryService.ItemIdget(Integer.parseInt(loginId));
			
			model.addObject("role", inventory);
			
			model.setViewName("ItemEdite");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return model;
	}
	
	@PostMapping("/updateItem")
public String saveItem(@RequestParam String ItemCategoryId,@RequestParam String itemCategory,@RequestParam String ItemCategoryShortCode,@RequestParam String description)
	
	{
		
		ItemCategory inventory =new ItemCategory();
		inventory.setItemCategoryId(Integer.parseInt(ItemCategoryId));
		inventory.setItemCategory(itemCategory);
		inventory.setItemCategoryShortCode(ItemCategoryShortCode);
		inventory.setItemCategoryDescription(itemCategory);
		inventoryService.updateItem(inventory);

		return "redirect:/inventorylist";
		
	}
	
	@GetMapping("/deleteItem")
	public ModelAndView deleteItem(@RequestParam String loginId)
	{
		
		ModelAndView model = new ModelAndView();
		try
		{

			ItemCategory inventory=inventoryService.ItemIdgetdelete(Integer.parseInt(loginId));
			
			model.addObject("role", inventory);
			
			model.setViewName("DeleteItemCategory");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return model;
	}
	
	@PostMapping("/delete3")
	public String getdeletebyid(@RequestParam String ItemCategoryId)
	{
		
		inventoryService.deleteItemById(Integer.parseInt(ItemCategoryId));
		
		return "redirect:/inventorylist";
		
	}
	
	@GetMapping("/cc")
	public String cancel()
	{
		
		 
		return "redirect:/inventorylist";
		
	}
	
}
