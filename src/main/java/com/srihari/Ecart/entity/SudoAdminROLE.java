package com.srihari.Ecart.entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="sudo_admin_role")
public class SudoAdminROLE {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="ROLE_ID")
	private Integer  roleId;
	
	
	@Column(name="ROLE_NAME")
	private String roleName ;
	
	@Column(name="Date_created")
    private Date  DATE_CREATED;
	
	@Column(name=" Date_updated")
	private Date DATE_UPDATED;

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Date getDATE_CREATED() {
		return DATE_CREATED;
	}

	public void setDATE_CREATED(Date dATE_CREATED) {
		DATE_CREATED = dATE_CREATED;
	}

	public Date getDATE_UPDATED() {
		return DATE_UPDATED;
	}

	public void setDATE_UPDATED(Date dATE_UPDATED) {
		DATE_UPDATED = dATE_UPDATED;
	}

	@Override
	public String toString() {
		return "SudoAdminROLE [roleId=" + roleId + ", roleName=" + roleName + ", DATE_CREATED=" + DATE_CREATED
				+ ", DATE_UPDATED=" + DATE_UPDATED + "]";
	}

	
	
}
