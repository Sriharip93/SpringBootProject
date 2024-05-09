 package com.srihari.Ecart.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.srihari.Ecart.entity.Admin;
import com.srihari.Ecart.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

@Autowired
private JpaRepository<Admin, String> jpaRepository;



@Override
public Admin getadminlist(String adminId) {
	System.out.println("entered into service");
	
	Admin admin	=jpaRepository.getById(adminId);
	
	System.out.println("enterd into service layer :"+admin);
	
	return admin;
}



@Override
public Admin getadminid(String adminId) {
	
	Admin admin	=jpaRepository.getById(adminId);
	
	System.out.println("entered into get id :" +adminId);
	return admin;
}



@Override
public void updateId(Admin admin) {
	
	
	System.out.println("updateId");
	
	jpaRepository.save(admin);
}





}
