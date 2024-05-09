package com.srihari.Ecart.repositary;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.srihari.Ecart.entity.Admin;


@Repository
public interface AdminRepositary extends JpaRepository<Admin, String> {
	
	

}
