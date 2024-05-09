package com.srihari.Ecart.service;

import com.srihari.Ecart.entity.Admin;

public interface AdminService {


	public Admin getadminlist(String adminId);

	public Admin getadminid(String adminId);

	

	public void updateId(Admin admin);
	

}
