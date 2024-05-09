package com.srihari.Ecart.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.srihari.Ecart.entity.ItemCategory;

@Repository
public interface ItemCategoryRepositary  extends JpaRepository<ItemCategory, Integer>{

}
