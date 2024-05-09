package com.srihari.Ecart.entity;

import java.sql.Date;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
@Entity
@Table(name="ROOT_ADMIN_USER")
public class Admin {
	
	@Id
	private String Admin_LOGIN_ID;
	
	private String  Admin_PASSWORD;
	
	private String Admin_NAME;
	
	private Long Admin_MOBILE_NUM1;
	
	private Long  Admin_MOBILE_NUM2;
	
	private Date  DATE_CREATED;
	
	private Date DATE_UPDATED;

	public String getAdmin_LOGIN_ID() {
		return Admin_LOGIN_ID;
	}

	public void setAdmin_LOGIN_ID(String admin_LOGIN_ID) {
		Admin_LOGIN_ID = admin_LOGIN_ID;
	}

	public String getAdmin_PASSWORD() {
		return Admin_PASSWORD;
	}

	public void setAdmin_PASSWORD(String admin_PASSWORD) {
		Admin_PASSWORD = admin_PASSWORD;
	}

	public String getAdmin_NAME() {
		return Admin_NAME;
	}

	public void setAdmin_NAME(String admin_NAME) {
		Admin_NAME = admin_NAME;
	}

	public Long getAdmin_MOBILE_NUM1() {
		return Admin_MOBILE_NUM1;
	}

	public void setAdmin_MOBILE_NUM1(Long admin_MOBILE_NUM1) {
		Admin_MOBILE_NUM1 = admin_MOBILE_NUM1;
	}

	public Long getAdmin_MOBILE_NUM2() {
		return Admin_MOBILE_NUM2;
	}

	public void setAdmin_MOBILE_NUM2(Long admin_MOBILE_NUM2) {
		Admin_MOBILE_NUM2 = admin_MOBILE_NUM2;
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
		return "Admin [Admin_LOGIN_ID=" + Admin_LOGIN_ID + ", Admin_PASSWORD=" + Admin_PASSWORD + ", Admin_NAME="
				+ Admin_NAME + ", Admin_MOBILE_NUM1=" + Admin_MOBILE_NUM1 + ", Admin_MOBILE_NUM2=" + Admin_MOBILE_NUM2
				+ ", DATE_CREATED=" + DATE_CREATED + ", DATE_UPDATED=" + DATE_UPDATED + "]";
	}
	
	
     
}
