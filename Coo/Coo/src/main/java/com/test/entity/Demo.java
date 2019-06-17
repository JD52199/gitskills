package com.test.entity;

public class Demo {

	private String guuid;
	private String ruuid;
	private Long bUserId;
	private String vUserName;
	private Integer gender;
	private String sex;
	
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	private String birthday;
	
	public String getBirthm() {
		return birthm;
	}
	public void setBirthm(String birthm) {
		this.birthm = birthm;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	private String birthm;
	
	private String country;
	private String bcity;
	private String telep;
	private String email;
	private String headpic;
	
	public String getvUserName() {
		return vUserName;
	}
	public void setvUserName(String vUserName) {
		this.vUserName = vUserName;
	}
	public Long getbUserId() {
		return bUserId;
	}
	public void setbUserId(Long bUserId) {
		this.bUserId = bUserId;
	}
	public String getGuuid() {
		return guuid;
	}
	public void setGuuid(String guuid) {
		this.guuid = guuid;
	}

	@Override
	public String toString() {
		return "Demo [guuid=" + guuid + ", ruuid=" + ruuid + ", bUserId=" + bUserId + ", vUserName=" + vUserName
				+ ", gender=" + gender + ", sex=" + sex + ", birthday=" + birthday + ", country=" + country + ", bcity="
				+ bcity + ", telep=" + telep + ", email=" + email + ", headpic=" + headpic + "]";
	}
	public String getRuuid() {
		return ruuid;
	}
	public void setRuuid(String ruuid) {
		this.ruuid = ruuid;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getBcity() {
		return bcity;
	}
	public void setBcity(String bcity) {
		this.bcity = bcity;
	}
	public String getTelep() {
		return telep;
	}
	public void setTelep(String telep) {
		this.telep = telep;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHeadpic() {
		return headpic;
	}
	public void setHeadpic(String headpic) {
		this.headpic = headpic;
	}
	
	
	
	
	
	
}
