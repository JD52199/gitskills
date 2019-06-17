package com.test.entity;

public class Hire {

	private Integer hire_id;
	private String company_name;
//	private Integer person_id;
	private String userName;
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	private Integer post_id;
	private Integer status;

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public Integer getHire_id() {
		return hire_id;
	}

	public void setHire_id(Integer hire_id) {
		this.hire_id = hire_id;
	}

	



	public Integer getPost_id() {
		return post_id;
	}

	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Hire [hire_id=" + hire_id + ", company_name=" + company_name + " post_id="
				+ post_id + ", status=" + status + "]";
	}

	
}
