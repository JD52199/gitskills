package com.test.entity;

import java.io.Serializable;

public class User implements Serializable{

	
	private static final long serialVersionUID = 1L;
	private Long userId;
	private String userName;
	private String password;
	private String passwordSalt;
	private int account_type;
	private String rname;
	private Integer gender;
	private String birthm;
	private String birthy;
	private String country;
	private String bcity;
	private String telep;
	private String email;
	private Integer status;	
	private String img;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getBirthm() {
		return birthm;
	}
	public void setBirthm(String birthm) {
		this.birthm = birthm;
	}
	public String getBirthy() {
		return birthy;
	}
	public void setBirthy(String birthy) {
		this.birthy = birthy;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getBcity() {
		return bcity;
	}
	public void setBcity(String bcity) {
		this.bcity = bcity;
	}
	public String getTelep() {
		return telep;
	}
	public void setTelep(String telep) {
		this.telep = telep;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAccount_type() {
		return account_type;
	}
	public void setAccount_type(int account_type) {
		this.account_type = account_type;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordSalt() {
		return passwordSalt;
	}
	public void setPasswordSalt(String passwordSalt) {
		this.passwordSalt = passwordSalt;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", passwordSalt="
				+ passwordSalt + ", account_type=" + account_type + ", rname=" + rname + ", gender=" + gender
				+ ", birthm=" + birthm + ", birthy=" + birthy + ", country=" + country + ", bcity=" + bcity + ", telep="
				+ telep + ", email=" + email + ", status=" + status + "]";
	}
	
}
