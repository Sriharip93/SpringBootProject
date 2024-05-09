package com.srihari.Ecart.service;

import java.util.List;

import com.srihari.Ecart.entity.SudoAdmin;

public interface SudoAdminService {

	void sample();

public List<SudoAdmin> getsudolist();

 public void saveSudoUser(SudoAdmin sudoAdmin);

 public SudoAdmin getEmployeeById(String loginId);


 public void updateSudoUser(SudoAdmin sudoAdmin);

SudoAdmin deleteEmployeeById(String loginId);

 public  void deleteSudoUsersById(String userid);



  public void uddatepassword(SudoAdmin sudoAdmin);

  public SudoAdmin getadminId(String loginId);

}
