package com.srihari.Ecart.service;

import java.util.List;

import com.srihari.Ecart.entity.ItemCategory;
import com.srihari.Ecart.entity.ItemsList;
import com.srihari.Ecart.entity.SudoAdminROLE;

public interface ItemCategoryService {

	public List<ItemCategory> getsudoRoleList();

	public void saveItem(ItemCategory inventory);

	public ItemCategory ItemIdget(Integer loginId);

	public void updateItem(ItemCategory inventory);

	public ItemCategory ItemIdgetdelete(Integer deleteId);

	public void deleteItemById(Integer deleteId);

	

}
