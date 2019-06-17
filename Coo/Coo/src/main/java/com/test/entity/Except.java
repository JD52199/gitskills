package com.test.entity;

public class Except {

	private Long except_id;
	private String post;
	private String area;
	private String day;
	private String start_time;
	private String salary;
	public String getGo_time() {
		return go_time;
	}
	public void setGo_time(String go_time) {
		this.go_time = go_time;
	}
	private String go_time;
	private String end_time;
	private Long bUserId;
	public Long getExcept_id() {
		return except_id;
	}
	public void setExcept_id(Long except_id) {
		this.except_id = except_id;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
	
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	@Override
	public String toString() {
		return "Except [except_id=" + except_id + ", post=" + post + ", area=" + area + ", day=" + day + ", start_time="
				+ start_time + ", salary=" + salary + ", goTime=" + go_time + ", end_time=" + end_time + ", bUserId="
				+ bUserId + "]";
	}
	public Long getbUserId() {
		return bUserId;
	}
	public void setbUserId(Long bUserId) {
		this.bUserId = bUserId;
	}
	
	
}
