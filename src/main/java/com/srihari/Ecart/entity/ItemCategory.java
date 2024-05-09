package com.srihari.Ecart.entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="items_category_list")
public class ItemCategory {

	
	 @Id
	 @GeneratedValue(strategy = GenerationType.AUTO)
	 @Column(name="Item_Category_Id")
	 private Integer itemCategoryId;
	 
	 @Column(name="Item_Category")
	 private String itemCategory;
	 
	 @Column(name="Item_Category_Short_Code")
	 private String itemCategoryShortCode;
	 
	 @Column(name="Item_Category_Description")
	 private String itemCategoryDescription;
	 
	 @Column(name="Date_created")
	 private Date dateCreated;
		
	 @Column(name="Date_updated")
	 private Date dateUpdated;

	public Integer getItemCategoryId() {
		return itemCategoryId;
	}

	public void setItemCategoryId(Integer itemCategoryId) {
		this.itemCategoryId = itemCategoryId;
	}

	public String getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}

	public String getItemCategoryShortCode() {
		return itemCategoryShortCode;
	}

	public void setItemCategoryShortCode(String itemCategoryShortCode) {
		this.itemCategoryShortCode = itemCategoryShortCode;
	}

	public String getItemCategoryDescription() {
		return itemCategoryDescription;
	}

	public void setItemCategoryDescription(String itemCategoryDescription) {
		this.itemCategoryDescription = itemCategoryDescription;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getDateUpdated() {
		return dateUpdated;
	}

	public void setDateUpdated(Date dateUpdated) {
		this.dateUpdated = dateUpdated;
	}

	@Override
	public String toString() {
		return "Inventory [itemCategoryId=" + itemCategoryId + ", itemCategory=" + itemCategory
				+ ", itemCategoryShortCode=" + itemCategoryShortCode + ", itemCategoryDescription="
				+ itemCategoryDescription + ", dateCreated=" + dateCreated + ", dateUpdated=" + dateUpdated + "]";
	}
	 
	 
}
