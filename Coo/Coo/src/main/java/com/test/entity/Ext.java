package com.test.entity;

public class Ext {
	private Integer except_id;
	
	public Integer getExcept_id() {
		return except_id;
	}
	public void setExcept_id(Integer except_id) {
		this.except_id = except_id;
	}
	private Integer bUserId;
	
	public Integer getbUserId() {
		return bUserId;
	}
	public void setbUserId(Integer bUserId) {
		this.bUserId = bUserId;
	}
	private String mod;
	private String job;
	private String cty;
	private Integer day;
	private String begin_year;
	private String begin_month;
	private String end_year;
	private String end_month;
	private Integer sly;
	private String repy;
	private String repm;
	private String repd;
	private String start_time;
	private String end_time;
	private String go_time;
	private int code;
	
	

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getGo_time() {
		return go_time;
	}
	public void setGo_time(String go_time) {
		this.go_time = go_time;
	}
	public String getMod() {
		return mod;
	}
	public void setMod(String mod) {
		this.mod = mod;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getCty() {
		return cty;
	}
	public void setCty(String cty) {
		this.cty = cty;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public String getBegin_year() {
		return begin_year;
	}
	public void setBegin_year(String begin_year) {
		this.begin_year = begin_year;
	}
	public String getBegin_month() {
		return begin_month;
	}
	public void setBegin_month(String begin_month) {
		this.begin_month = begin_month;
	}
	public String getEnd_year() {
		return end_year;
	}
	public void setEnd_year(String end_year) {
		this.end_year = end_year;
	}
	public String getEnd_month() {
		return end_month;
	}
	public void setEnd_month(String end_month) {
		this.end_month = end_month;
	}
	public Integer getSly() {
		return sly;
	}
	public void setSly(Integer sly) {
		this.sly = sly;
	}
	public String getRepy() {
		return repy;
	}
	public void setRepy(String repy) {
		this.repy = repy;
	}
	public String getRepm() {
		return repm;
	}
	public void setRepm(String repm) {
		this.repm = repm;
	}
	public String getRepd() {
		return repd;
	}
	public void setRepd(String repd) {
		this.repd = repd;
	}
	@Override
	public String toString() {
		return "Ext [except_id=" + except_id + ", bUserId=" + bUserId + ", mod=" + mod + ", job=" + job + ", cty=" + cty
				+ ", day=" + day + ", begin_year=" + begin_year + ", begin_month=" + begin_month + ", end_year="
				+ end_year + ", end_month=" + end_month + ", sly=" + sly + ", repy=" + repy + ", repm=" + repm
				+ ", repd=" + repd + ", start_time=" + start_time + ", end_time=" + end_time + ", go_time=" + go_time
				+ ", code=" + code + "]";
	}

	
	
	
}
