package com.test.entity;

import java.util.Date;

public class PostAndCompany {
	@Override
	public String toString() {
		return "PostAndCompany [profile_id=" + profile_id + ", company_name=" + company_name + ", company_type="
				+ company_type + ", company_culture=" + company_culture + ", company_loacation=" + company_loacation
				+ ", post_id=" + post_id + ", post_name=" + post_name + ", post_location=" + post_location
				+ ", published=" + published + ", comm=" + comm + ", practice_time=" + practice_time
				+ ", post_worktime=" + post_worktime + ", post_education=" + post_education + ", post_require="
				+ post_require + ", post_duty=" + post_duty + "]";
	}
	
	
	private Integer profile_id;
	private String company_name;
	
	private String company_type;
	
	private String company_culture;
	
	private String company_loacation;

	private Integer post_id;
	
	private String post_name;
	
	private String post_location;

	private Integer published;

	private String comm;//每天的工资或者面试
	
	private String practice_time;
	
	private String post_worktime;
	private String post_education;
	private String post_require;
	private String post_duty;
	private String post_benefit;
	private Date post_publish;
	private String post_type;
	private String person_id;
	
	private String img;
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPerson_id() {
		return person_id;
	}

	public void setPerson_id(String person_id) {
		this.person_id = person_id;
	}

	public String getPost_type() {
		return post_type;
	}

	public void setPost_type(String post_type) {
		this.post_type = post_type;
	}
	private String endTime;
	private String detailTime;
	
	
	
	
	
	
	public String getDetailTime() {
		return detailTime;
	}

	public void setDetailTime(String detailTime) {
		this.detailTime = detailTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public Date getPost_publish() {
		return post_publish;
	}

	public void setPost_publish(Date post_publish) {
		this.post_publish = post_publish;
	}

	public String getPost_benefit() {
		return post_benefit;
	}

	public void setPost_benefit(String post_benefit) {
		this.post_benefit = post_benefit;
	}

	public String getPost_require() {
		return post_require;
	}

	public void setPost_require(String post_require) {
		this.post_require = post_require;
	}

	public String getPost_duty() {
		return post_duty;
	}

	public void setPost_duty(String post_duty) {
		this.post_duty = post_duty;
	}

	public String getPost_education() {
		return post_education;
	}

	public void setPost_education(String post_education) {
		this.post_education = post_education;
	}

	public String getCompany_culture() {
		return company_culture;
	}

	public void setCompany_culture(String company_culture) {
		this.company_culture = company_culture;
	}

	public String getCompany_loacation() {
		return company_loacation;
	}

	public void setCompany_loacation(String company_loacation) {
		this.company_loacation = company_loacation;
	}

	public String getPost_worktime() {
		return post_worktime;
	}

	public void setPost_worktime(String post_worktime) {
		this.post_worktime = post_worktime;
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

	public String getCompany_type() {
		return company_type;
	}

	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}

	public Integer getPost_id() {
		return post_id;
	}

	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}

	public String getPost_name() {
		return post_name;
	}

	public void setPost_name(String post_name) {
		this.post_name = post_name;
	}

	public String getPost_location() {
		return post_location;
	}

	public void setPost_location(String post_location) {
		this.post_location = post_location;
	}

	public Integer getPublished() {
		return published;
	}

	public void setPublished(Integer published) {
		this.published = published;
	}

	public String getComm() {
		return comm;
	}

	public void setComm(String comm) {
		this.comm = comm;
	}

	public String getPractice_time() {
		return practice_time;
	}

	public void setPractice_time(String practice_time) {
		this.practice_time = practice_time;
	}
	
	
}
