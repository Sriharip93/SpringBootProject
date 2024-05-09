package com.srihari.Ecart.service;

import java.util.List;

import com.srihari.Ecart.entity.SudoAdminROLE;

public interface SudoAdminROLEservice {

public void getnext();

public List<SudoAdminROLE> getsudoRoleList();

public void saveRole(SudoAdminROLE adminROLE);

public SudoAdminROLE RoleIdget(Integer loginId);

public void updateRolename(SudoAdminROLE adminROLE);

public SudoAdminROLE deleteRollById(Integer loginId);


 public void deleteRoleById(Integer Rollid);



}
