package com.test.entity;

public class Experience {
	private Integer experience_id;
	private String oldcompany_name;
	private String experience_job;
	private String experience_time;
	private String experience_location;
	private String experience_duty;
	private String userName;
	
	public String getOldcompany_name() {
		return oldcompany_name;
	}
	public void setOldcompany_name(String oldcompany_name) {
		this.oldcompany_name = oldcompany_name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getExperience_id() {
		return experience_id;
	}
	public void setExperience_id(Integer experience_id) {
		this.experience_id = experience_id;
	}
	
	public String getExperience_job() {
		return experience_job;
	}
	public void setExperience_job(String experience_job) {
		this.experience_job = experience_job;
	}
	public String getExperience_time() {
		return experience_time;
	}
	public void setExperience_time(String experience_time) {
		this.experience_time = experience_time;
	}
	public String getExperience_location() {
		return experience_location;
	}
	public void setExperience_location(String experience_location) {
		this.experience_location = experience_location;
	}
	public String getExperience_duty() {
		return experience_duty;
	}
	public void setExperience_duty(String experience_duty) {
		this.experience_duty = experience_duty;
	}
	@Override
	public String toString() {
		return "Experience [experience_id=" + experience_id + ", oldcompany_name=" + oldcompany_name
				+ ", experience_job=" + experience_job + ", experience_time=" + experience_time
				+ ", experience_location=" + experience_location + ", experience_duty=" + experience_duty
				+ ", userName=" + userName + "]";
	}
	

}
