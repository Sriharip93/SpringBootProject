package com.srihari.Ecart.service;

import java.util.List;

import com.srihari.Ecart.entity.ItemsList;

public interface ItemService {

	public List<ItemsList> getItemList();

	public void saveItem(ItemsList itemlist);

	public ItemsList RoleIdget(int int1);

	public void updateItem(ItemsList itemlist);

	public void deleteItemById(int itemId);

}
