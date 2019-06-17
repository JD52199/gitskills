package com.test.entity;

import java.util.Date;

public class Note {

	private Integer note_id;
	private Integer account_id;
	private String note_title;
	private Date note_time;
	private String note_content;
	private Integer note_audit;
	public Integer getNote_id() {
		return note_id;
	}
	public void setNote_id(Integer note_id) {
		this.note_id = note_id;
	}
	public Integer getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Integer account_id) {
		this.account_id = account_id;
	}
	public String getNote_title() {
		return note_title;
	}
	public void setNote_title(String note_title) {
		this.note_title = note_title;
	}
	public Date getNote_time() {
		return note_time;
	}
	public void setNote_time(Date note_time) {
		this.note_time = note_time;
	}
	public String getNote_content() {
		return note_content;
	}
	public void setNote_content(String note_content) {
		this.note_content = note_content;
	}
	public Integer getNote_audit() {
		return note_audit;
	}
	public void setNote_audit(Integer note_audit) {
		this.note_audit = note_audit;
	}
	
}
