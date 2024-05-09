package com.srihari.Ecart.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srihari.Ecart.entity.ItemCategory;
import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.repositary.ItemCategoryRepositary;
import com.srihari.Ecart.service.ItemCategoryService;

@Service
public class ItemCategoryServiceImpl  implements ItemCategoryService {

	@Autowired
	private ItemCategoryRepositary inventoryRepositary;

	@Override
	public List<ItemCategory> getsudoRoleList() {
		
		List<ItemCategory> list = inventoryRepositary.findAll();
		return list;
	}

	@Override
	public void saveItem(ItemCategory inventory) {
		
		inventoryRepositary.save(inventory);
	}

	@Override
	public ItemCategory ItemIdget(Integer loginId) {
		
		ItemCategory inventory=inventoryRepositary.getById(loginId);
		return inventory;
	}

	@Override
	public void updateItem(ItemCategory inventory) {

		inventoryRepositary.save(inventory);
		
		
		
	}

	@Override
	public ItemCategory ItemIdgetdelete(Integer deleteId) {
		ItemCategory inventory=inventoryRepositary.getById(deleteId);
		return inventory;
	}

	@Override
	public void deleteItemById(Integer deleteId) {
		
		inventoryRepositary.deleteById(deleteId);
	}


}
