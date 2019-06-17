package com.test.entity;

public class Account {

	private Integer account_id;
	private String account_name;
	private String account_pwd;
	private Integer account_type;
	private String account_tel;
	private String account_email;
	private String account_audit;
	
	public String getAccount_tel() {
		return account_tel;
	}
	public void setAccount_tel(String account_tel) {
		this.account_tel = account_tel;
	}
	public Integer getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	
	public String getAccount_pwd() {
		return account_pwd;
	}
	public void setAccount_pwd(String account_pwd) {
		this.account_pwd = account_pwd;
	}
	public String getAccount_email() {
		return account_email;
	}
	public void setAccount_email(String account_email) {
		this.account_email = account_email;
	}
	public String getAccount_audit() {
		return account_audit;
	}
	public void setAccount_audit(String account_audit) {
		this.account_audit = account_audit;
	}
	public Integer getAccount_type() {
		return account_type;
	}
	public void setAccount_type(Integer account_type) {
		this.account_type = account_type;
	}
}