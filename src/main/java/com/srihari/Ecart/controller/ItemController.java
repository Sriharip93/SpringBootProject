package com.srihari.Ecart.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.srihari.Ecart.entity.ItemCategory;
import com.srihari.Ecart.entity.ItemsList;
import com.srihari.Ecart.entity.SudoAdmin;
import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.service.ItemCategoryService;
import com.srihari.Ecart.service.ItemService;
import com.srihari.Ecart.service.SudoAdminROLEservice;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;
	

	@Autowired
	private ItemCategoryService inventoryService;

	
	ModelAndView model=new ModelAndView();
	
	@GetMapping("/itemlist")
	public ModelAndView inventorylistform()
	{
		
List<ItemsList> list=itemService.getItemList();
		
		model.addObject("itemlis", list);
		
		model.setViewName("ItemsList");
		return model;
		
	}
	
	@GetMapping("/newItem")
	public ModelAndView addItem()
	{
		ModelAndView model =new ModelAndView();
		
		List<ItemCategory> list=inventoryService.getsudoRoleList();
		
        System.out.println("11111111111111111111111111111111111");
        System.out.println(list);
		
		model.addObject("catelist", list);
		
		
	      model.setViewName("AddNewItemForm");
			
			return model;
	}
	
	@PostMapping("/AddItem")
	public String saveSudoUserRecords(@RequestParam String itemName,@RequestParam String ItemShortCode,@RequestParam String categoryName,@RequestParam String ItemDescription,@RequestParam String ItemPrice,@RequestParam String ItemOldPrice,@RequestParam String Status)
	
	{
		ItemsList itemlist=new ItemsList();
		
		System.out.println("222222222222222222222222");
		
		System.out.println(itemName);
		System.out.println(ItemShortCode);
		System.out.println(categoryName);
		System.out.println(ItemDescription);
		System.out.println(ItemPrice);
		System.out.println(ItemOldPrice);
		System.out.println(Status);
		
		itemlist.setItemName(itemName);
		
		
		itemlist.setItemsShortCode(ItemShortCode);
		
		itemlist.setItemDescription(ItemDescription);
		
		itemlist.setItemCategory(categoryName);
		
		itemlist.setItemPrice(Float.parseFloat(ItemPrice));
		
		itemlist.setItemOldPrice(Float.parseFloat(ItemOldPrice));
		
		itemlist.setItemStatus(Status);
	
		
		
		
	 
		
		List<ItemCategory> list=inventoryService.getsudoRoleList();
		
		Iterator<ItemCategory> iterator = list.iterator();
		
		while(iterator.hasNext())
		{
			ItemCategory itemCategory = iterator.next();
			if(categoryName.equals(itemCategory.getItemCategory())) {
				System.out.println("id===="+itemCategory.getItemCategoryId());
				itemlist.setItemCategoryId(itemCategory.getItemCategoryId());
				break;
			}
			
			System.out.println(itemCategory);
		}
		
		itemService.saveItem(itemlist);
		
		return "redirect:/itemlist";
		
	}
	
		
	
	
	@GetMapping("/editItems")
	public ModelAndView updateSudoUser(@RequestParam String loginId)
	{
		
		ModelAndView model = new ModelAndView();
		try
		{

			List<ItemCategory> categerilist=inventoryService.getsudoRoleList();
			
			model.addObject("itemlis", categerilist);
			
			
			ItemsList itemlist=itemService.RoleIdget(Integer.parseInt(loginId));
			
			
			model.addObject("item", itemlist);
			
			model.setViewName("EditItemsForm");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return model;
	}
	
	
	@PostMapping("/updateItems")
	public String saveSudoUser(@RequestParam String itemId,@RequestParam String ItemShortCode,@RequestParam String ItemName,@RequestParam String categoryName,@RequestParam String Description,@RequestParam String ItemPrice,@RequestParam String ItemOldPrice,@RequestParam String Status)
	{
		

		System.out.println(itemId);
		System.out.println(ItemName);
		System.out.println(categoryName);
		System.out.println(categoryName);
		System.out.println(ItemPrice);
		System.out.println(ItemOldPrice);
		System.out.println(Status);
	ItemsList  itemlist= itemService.RoleIdget(Integer.parseInt(itemId));
		
		
		itemlist.setItemName(ItemName);
		itemlist.setItemCategory(categoryName);
		itemlist.setItemDescription(Description);
		itemlist.setItemPrice(Float.parseFloat(ItemPrice));
		itemlist.setItemOldPrice(Float.parseFloat(ItemOldPrice));
		itemlist.setItemStatus(Status);
		itemlist.setItemsShortCode(ItemShortCode);
				
		
		itemService.updateItem(itemlist);
		
		return "redirect:/itemlist";
		
	}
	@GetMapping("/deleteItemform")
	public ModelAndView deleteItem(@RequestParam String loginId)
	{
		
		ModelAndView model = new ModelAndView();
		try
		{

			ItemsList itemlist=itemService.RoleIdget(Integer.parseInt(loginId));
			
			model.addObject("item", itemlist);
			
			model.setViewName("DeletItem");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return model;
	}
	
	@PostMapping("/deleteItem")
	public String getdeletebyid(@RequestParam String itemId)
	{
		
		itemService.deleteItemById(Integer.parseInt(itemId));
		
		return "redirect:/itemlist";
		
	}
	
	@GetMapping("/backitemlist")
	public String cancel()
	{
		
		
		return "redirect:/inventorylist";
		
	}
	
	
}
