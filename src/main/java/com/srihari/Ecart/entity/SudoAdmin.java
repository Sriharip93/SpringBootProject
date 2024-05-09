package com.srihari.Ecart.entity;

import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name = "sudo_Admin_User")
public class SudoAdmin {
	
	@Id
	@Column(name="User_Login_Id")
	private String userLoginId; 
	
	@Column(name="User_password")
	private String userPassword; 
	
	@Column(name="User_Role_Name")
	private String userRoleName ;
	
	@Column(name="User_Name")
	private String userName;
	
	@Column(name="user_contact_Mobile_Number")
	private Long userContactMobileNum;
	
	@Column(name="user_contact_Email_Id")
	private String userContactEmailId;
	
	@Column(name="date_careted")
	private LocalDate createdDate;
	
	@Column(name="date_updated")
	private LocalDate modifiedDate;
	
	public String getUserLoginId() {
		return userLoginId;
	}

	public void setUserLoginId(String userLoginId) {
		this.userLoginId = userLoginId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserRoleName() {
		return userRoleName;
	}

	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Long getUserContactMobileNum() {
		return userContactMobileNum;
	}

	public void setUserContactMobileNum(Long userContactMobileNum) {
		this.userContactMobileNum = userContactMobileNum;
	}

	public String getUserContactEmailId() {
		return userContactEmailId;
	}

	public void setUserContactEmailId(String userContactEmailId) {
		this.userContactEmailId = userContactEmailId;
	}

	public LocalDate getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDate createdDate) {
		this.createdDate = createdDate;
	}

	public LocalDate getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(LocalDate modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	@Override
	public String toString() {
		return "SudoAdminEntity [userLoginId=" + userLoginId + ", userPassword=" + userPassword + ", userRoleName="
				+ userRoleName + ", userName=" + userName + ", userContactMobileNum=" + userContactMobileNum
				+ ", userContactEmailId=" + userContactEmailId + ", createdDate=" + createdDate + ", modifiedDate="
				+ modifiedDate + "]";
	}


	
	

}
