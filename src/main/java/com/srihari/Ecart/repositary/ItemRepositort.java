package com.srihari.Ecart.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.srihari.Ecart.entity.ItemsList;

@Repository
public interface ItemRepositort extends JpaRepository<ItemsList, Integer>{

}
