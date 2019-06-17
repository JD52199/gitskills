package com.test.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Comment {
	private Integer  comment_id;
	private Integer account_id3;
	private Integer note_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date comment_time;
	private String comment_content;
	public Integer getComment_id() {
		return comment_id;
	}
	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}
	public Integer getAccount_id3() {
		return account_id3;
	}
	public void setAccount_id3(Integer account_id3) {
		this.account_id3 = account_id3;
	}
	public Integer getNote_id() {
		return note_id;
	}
	public void setNote_id(Integer note_id) {
		this.note_id = note_id;
	}
	public Date getComment_time() {
		return comment_time;
	}
	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "comment_id="+comment_id+"account_id3="+account_id3+"note_id="+note_id+"comment_time="+comment_time+"comment_content="+comment_content;
	}	
}
