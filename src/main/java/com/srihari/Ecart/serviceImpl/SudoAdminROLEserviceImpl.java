package com.srihari.Ecart.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import com.srihari.Ecart.entity.SudoAdminROLE;
import com.srihari.Ecart.repositary.SudoAdminROLErepositary;
import com.srihari.Ecart.service.SudoAdminROLEservice;

@Service
public  class SudoAdminROLEserviceImpl  implements SudoAdminROLEservice{
	
	@Autowired
	private JpaRepository<SudoAdminROLE, Integer>jpaRepository; 

	@Override
	public void getnext() {
		System.out.println("enter into SudoAdminROLEservice ");
		
	}

	@Override
	public List<SudoAdminROLE> getsudoRoleList() {
		
		List<SudoAdminROLE> list = jpaRepository.findAll();
		return list;
	}

	@Override
	public void saveRole(SudoAdminROLE adminROLE) {
		
		jpaRepository.save(adminROLE);
		
	}

	@Override
	public SudoAdminROLE RoleIdget(Integer loginId) {
 
		SudoAdminROLE adminROLE=jpaRepository.getById(loginId);
		
		System.out.println("enter into role id :"+adminROLE);

		return adminROLE;
	}

	@Override
	public void updateRolename(SudoAdminROLE adminROLE) {
		
		jpaRepository.save(adminROLE);
	}

	@Override
	public SudoAdminROLE deleteRollById(Integer loginId) {

		SudoAdminROLE adminROLE=jpaRepository.getById(loginId);
		return adminROLE;
	}

	@Override
	public void deleteRoleById(Integer userid) {


		jpaRepository.deleteById(userid);
	}

	
	
	
	
}
