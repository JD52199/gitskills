package com.test.entity;

public class Education {

	private Integer education_id;
	private String education_school;
	private String education_time;
	private String education_education;
	private String education_major;
	private String education_majortype;
	private String education_list;
	private String education_course;
	private String education_honor;
	private String userName;
	private Integer status;
	
	public Integer getEducation_id() {
		return education_id;
	}
	public void setEducation_id(Integer education_id) {
		this.education_id = education_id;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getEducation_school() {
		return education_school;
	}
	public void setEducation_school(String education_school) {
		this.education_school = education_school;
	}
	public String getEducation_time() {
		return education_time;
	}
	public void setEducation_time(String education_time) {
		this.education_time = education_time;
	}
	public String getEducation_education() {
		return education_education;
	}
	public void setEducation_education(String education_education) {
		this.education_education = education_education;
	}
	public String getEducation_major() {
		return education_major;
	}
	public void setEducation_major(String education_major) {
		this.education_major = education_major;
	}
	public String getEducation_majortype() {
		return education_majortype;
	}
	public void setEducation_majortype(String education_majortype) {
		this.education_majortype = education_majortype;
	}
	public String getEducation_list() {
		return education_list;
	}
	public void setEducation_list(String education_list) {
		this.education_list = education_list;
	}
	public String getEducation_course() {
		return education_course;
	}
	public void setEducation_course(String education_course) {
		this.education_course = education_course;
	}
	public String getEducation_honor() {
		return education_honor;
	}
	public void setEducation_honor(String education_honor) {
		this.education_honor = education_honor;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "Education [education_school=" + education_school + ", education_time=" + education_time
				+ ", education_education=" + education_education + ", education_major=" + education_major
				+ ", education_majortype=" + education_majortype + ", education_list=" + education_list
				+ ", education_course=" + education_course + ", education_honor=" + education_honor + ", userName="
				+ userName + "]";
	}
	
}
