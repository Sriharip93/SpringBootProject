package com.srihari.Ecart.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srihari.Ecart.entity.ItemsList;
import com.srihari.Ecart.repositary.ItemRepositort;
import com.srihari.Ecart.service.ItemService;

@Service
public class ItemServiceImpl  implements ItemService{

	@Autowired
	private  ItemRepositort itemRepositort;

	@Override
	public List<ItemsList> getItemList() {
		
		List<ItemsList> list = itemRepositort.findAll();
		return list;
	}

	@Override
	public void saveItem(ItemsList itemlist) {

		itemRepositort.save(itemlist);
		
	}

	@Override
	public ItemsList RoleIdget(int int1) {
		
		ItemsList itemlist=itemRepositort.getById(int1);
		return itemlist;
	}

	@Override
	public void updateItem(ItemsList itemlist) {

		itemRepositort.save(itemlist);
	}

	@Override
	public void deleteItemById(int itemId) {
		itemRepositort.deleteById(itemId);
	}

	
}
