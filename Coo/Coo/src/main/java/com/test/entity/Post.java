package com.test.entity;

public class Post {

	private Integer post_id;
	private String post_name;
	private String post_type;
	private String post_location;
	private Integer post_salary;
	private String post_education;
	private String post_publish;
	private String post_correctiontime;
	private String post_benefit;
	private String post_worktime;
	private String post_duty;
	private String post_require;
	private String company_name;
	private String practice_time;
	private String comm;
	private int status;
	private String status_cc;
	private Integer start;            // ��ʼ��
	private Integer rows; 
	private String recruit_type;
	private String key;
	private String post_indenty;
	private String img;
	
	
	
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getPost_indenty() {
		return post_indenty;
	}
	public void setPost_indenty(String post_indenty) {
		this.post_indenty = post_indenty;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getRecruit_type() {
		return recruit_type;
	}
	public void setRecruit_type(String recruit_type) {
		this.recruit_type = recruit_type;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
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
	public String getPost_type() {
		return post_type;
	}
	public void setPost_type(String post_type) {
		this.post_type = post_type;
	}
	public String getPost_location() {
		return post_location;
	}
	public void setPost_location(String post_location) {
		this.post_location = post_location;
	}
	public Integer getPost_salary() {
		return post_salary;
	}
	public void setPost_salary(Integer post_salary) {
		this.post_salary = post_salary;
	}
	public String getPost_education() {
		return post_education;
	}
	public void setPost_education(String post_education) {
		this.post_education = post_education;
	}
	public String getPost_publish() {
		return post_publish;
	}
	public void setPost_publish(String post_publish) {
		this.post_publish = post_publish;
	}
	public String getPost_correctiontime() {
		return post_correctiontime;
	}
	public void setPost_correctiontime(String post_correctiontime) {
		this.post_correctiontime = post_correctiontime;
	}
	public String getPost_benefit() {
		return post_benefit;
	}
	public void setPost_benefit(String post_benefit) {
		this.post_benefit = post_benefit;
	}
	public String getPost_worktime() {
		return post_worktime;
	}
	public void setPost_worktime(String post_worktime) {
		this.post_worktime = post_worktime;
	}
	public String getPost_duty() {
		return post_duty;
	}
	public void setPost_duty(String post_duty) {
		this.post_duty = post_duty;
	}
	public String getPost_require() {
		return post_require;
	}
	public void setPost_require(String post_require) {
		this.post_require = post_require;
	}
	
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getPractice_time() {
		return practice_time;
	}
	public void setPractice_time(String practice_time) {
		this.practice_time = practice_time;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getStatus_cc() {
		return status_cc;
	}
	public void setStatus_cc(String status_cc) {
		this.status_cc = status_cc;
	}
	@Override
	public String toString() {
		return "Post [post_id=" + post_id + ", post_name=" + post_name + ", post_type=" + post_type + ", post_location="
				+ post_location + ", post_salary=" + post_salary + ", post_education=" + post_education
				+ ", post_publish=" + post_publish + ", post_correctiontime=" + post_correctiontime + ", post_benefit="
				+ post_benefit + ", post_worktime=" + post_worktime + ", post_duty=" + post_duty + ", post_require="
				+ post_require + ", company_name=" + company_name + ", practice_time=" + practice_time + ", comm="
				+ comm + ", status=" + status + ", status_cc=" + status_cc + ", start=" + start + ", rows=" + rows
				+ ", recruit_type=" + recruit_type + ", key=" + key + ", post_indenty=" + post_indenty + ", img=" + img
				+ "]";
	}
	
	
	
	
	
	
	
	
	
}
