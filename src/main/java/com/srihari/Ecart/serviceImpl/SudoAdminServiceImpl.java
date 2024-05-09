package com.srihari.Ecart.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srihari.Ecart.entity.SudoAdmin;
import com.srihari.Ecart.repositary.SudoAdminRepositary;
import com.srihari.Ecart.service.SudoAdminService;

@Service
public class SudoAdminServiceImpl implements SudoAdminService{
	
	@Autowired
	private SudoAdminRepositary sudoAdminRepositary;

	@Override
	public void sample() {
		
		System.out.println("ENTER INTO SudoAdminServiceImpl");
		
	}

	@Override
	public List<SudoAdmin> getsudolist() {
		
		List<SudoAdmin> list = sudoAdminRepositary.findAll();
		
		System.out.println("sudoAdminRepositary :"+list);
		
		return list;
	}

	@Override
	public void saveSudoUser(SudoAdmin sudoAdmin) {
		
		System.out.println("entered into save SudoUser");
		
		sudoAdminRepositary.save(sudoAdmin);
		
	}

	@Override
	public SudoAdmin getEmployeeById(String loginId) {
		
		SudoAdmin sudoAdmin=sudoAdminRepositary.getById(loginId);
		return sudoAdmin;
	}

	@Override
	public void updateSudoUser(SudoAdmin sudoAdmin) {
		
		sudoAdminRepositary.save(sudoAdmin);
	}

	@Override
	public SudoAdmin deleteEmployeeById(String loginId) {
		

		SudoAdmin sudoAdmin=sudoAdminRepositary.getById(loginId);
		return sudoAdmin;
	}

	@Override
	public void deleteSudoUsersById(String userid) {
		
		sudoAdminRepositary.deleteById(userid);
	}

	

	@Override
	public void uddatepassword(SudoAdmin sudoAdmin) {
		
		sudoAdminRepositary.save(sudoAdmin);
		
	}

	@Override
	public SudoAdmin getadminId(String loginId) {
		
		 SudoAdmin sudoAdmin=sudoAdminRepositary.getById(loginId);
		return sudoAdmin;
	}

	

}
