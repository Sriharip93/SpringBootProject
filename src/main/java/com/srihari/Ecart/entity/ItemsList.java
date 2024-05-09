package com.srihari.Ecart.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Items_List")
public class ItemsList {
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name="Item_Id ")
	 private Integer itemId ;
	 
	 @Column(name="Item_name")
	 private String itemName;
	 
	 @Column(name="Items_Short_Code ")
	 private String itemsShortCode ;
	 
	 @Column(name="Item_Category_Id")
	 private Integer itemCategoryId ;
	 
	 @Column(name=" Item_Category")
	 private String  itemCategory;

	 @Column(name="Item_Description")
	 private String itemDescription;
	
	 @Column(name="Item_Price")
	 private Float itemPrice;
	
	 @Column(name="Item_Old_Price")
	 private Float itemOldPrice;
	 
	 @Column(name="Item_Status")
	 private String itemStatus;

	public Integer getItemId() {
		return itemId;
	}

	
	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemsShortCode() {
		return itemsShortCode;
	}

	public void setItemsShortCode(String itemsShortCode) {
		this.itemsShortCode = itemsShortCode;
	}

	public Integer getItemCategoryId() {
		return itemCategoryId;
	}

	public void setItemCategoryId(Integer itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}

	public String getItemDescription() {
		return itemDescription;
	}

	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}

	public Float getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(Float itemPrice) {
		this.itemPrice = itemPrice;
	}

	public Float getItemOldPrice() {
		return itemOldPrice;
	}

	public void setItemOldPrice(Float itemOldPrice) {
		this.itemOldPrice = itemOldPrice;
	}

	public String getItemStatus() {
		return itemStatus;
	}

	public void setItemStatus(String itemStatus) {
		this.itemStatus = itemStatus;
	}


	public String getItemCategory() {
		return itemCategory;
	}


	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}


	@Override
	public String toString() {
		return "ItemsList [itemId=" + itemId + ", itemName=" + itemName + ", itemsShortCode=" + itemsShortCode
				+ ", itemCategoryId=" + itemCategoryId + ", itemCategory=" + itemCategory + ", itemDescription="
				+ itemDescription + ", itemPrice=" + itemPrice + ", itemOldPrice=" + itemOldPrice
				+ ", itemStatus=" + itemStatus + "]";
	}

	
	 
	 



}
