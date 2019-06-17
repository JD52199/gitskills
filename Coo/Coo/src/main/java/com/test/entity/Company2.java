package com.test.entity;

public class Company2 {
	private Integer profile_id;
	private String company_name;
	private String company_culture;
	private String company_location;
	private String company_numbers;
	private String company_type;
	private String company_detaillocation;
	private String company_registertime;
	private String company_capital;
	private Integer post_id;
	private Integer status;
	private String code;
	private String img;
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getProfile_id() {
		return profile_id;
	}
	public void setProfile_id(Integer profile_id) {
		this.profile_id = profile_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_culture() {
		return company_culture;
	}
	public void setCompany_culture(String company_culture) {
		this.company_culture = company_culture;
	}
	public String getCompany_location() {
		return company_location;
	}
	public void setCompany_location(String company_location) {
		this.company_location = company_location;
	}
	public String getCompany_numbers() {
		return company_numbers;
	}
	public void setCompany_numbers(String company_numbers) {
		this.company_numbers = company_numbers;
	}
	public String getCompany_type() {
		return company_type;
	}
	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}
	public String getCompany_detaillocation() {
		return company_detaillocation;
	}
	public void setCompany_detaillocation(String company_detaillocation) {
		this.company_detaillocation = company_detaillocation;
	}
	public String getCompany_registertime() {
		return company_registertime;
	}
	public void setCompany_registertime(String company_registertime) {
		this.company_registertime = company_registertime;
	}
	public String getCompany_capital() {
		return company_capital;
	}
	public void setCompany_capital(String company_capital) {
		this.company_capital = company_capital;
	}
	public Integer getPost_id() {
		return post_id;
	}
	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}
	@Override
	public String toString() {
		return "Company2 [profile_id=" + profile_id + ", company_name=" + company_name + ", company_culture="
				+ company_culture + ", company_location=" + company_location + ", company_numbers=" + company_numbers
				+ ", company_type=" + company_type + ", company_detaillocation=" + company_detaillocation
				+ ", company_registertime=" + company_registertime + ", company_capital=" + company_capital
				+ ", post_id=" + post_id + ", status=" + status + ", code=" + code + ", img=" + img + "]";
	}
	
	

}
