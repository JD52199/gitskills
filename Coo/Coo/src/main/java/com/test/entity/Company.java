package com.test.entity;

import java.util.Date;

public class Company {

	private Integer company_id;
	private String company_name;
	private Date builttime;
	private String scale;
	private String location;
	private Float capital;
	private String company_type;
	private String legalperson;
	private Float company_coverage;
	private Integer company_audit;
	private Integer account_id4;
	private Integer start;            // ��ʼ��
	private Integer rows;             // ��ȡ����
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
	public Integer getAccount_id4() {
		return account_id4;
	}
	public void setAccount_id4(Integer account_id4) {
		this.account_id4 = account_id4;
	}
	public Integer getCompany_id() {
		return company_id;
	}
	public void setCompany_id(Integer company_id) {
		this.company_id = company_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public Date getBuilttime() {
		return builttime;
	}
	public void setBuilttime(Date builttime) {
		this.builttime = builttime;
	}
	
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Float getCapital() {
		return capital;
	}
	public void setCapital(Float capital) {
		this.capital = capital;
	}
	public String getCompany_type() {
		return company_type;
	}
	public void setCompany_type(String company_type) {
		this.company_type = company_type;
	}
	public String getLegalperson() {
		return legalperson;
	}
	public void setLegalperson(String legalperson) {
		this.legalperson = legalperson;
	}
	public Float getCompany_coverage() {
		return company_coverage;
	}
	public void setCompany_coverage(Float company_coverage) {
		this.company_coverage = company_coverage;
	}
	public Integer getCompany_audit() {
		return company_audit;
	}
	public void setCompany_audit(Integer company_audit) {
		this.company_audit = company_audit;
	}
	
	
	
}
