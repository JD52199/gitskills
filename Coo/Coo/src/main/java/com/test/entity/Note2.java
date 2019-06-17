package com.test.entity;

public class Note2 {
	private Integer note_id;
	private String note_title;
	private String note_content;
	private String note_time;
	private String note_author;
	private Integer status;
	private String img;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getNote_id() {
		return note_id;
	}
	public void setNote_id(Integer note_id) {
		this.note_id = note_id;
	}
	public String getNote_title() {
		return note_title;
	}
	public void setNote_title(String note_title) {
		this.note_title = note_title;
	}
	public String getNote_content() {
		return note_content;
	}
	public void setNote_content(String note_content) {
		this.note_content = note_content;
	}
	public String getNote_time() {
		return note_time;
	}
	public void setNote_time(String note_time) {
		this.note_time = note_time;
	}
	public String getNote_author() {
		return note_author;
	}
	public void setNote_author(String note_author) {
		this.note_author = note_author;
	}
	@Override
	public String toString() {
		return "Note2 [note_id=" + note_id + ", note_title=" + note_title + ", note_content=" + note_content
				+ ", note_time=" + note_time + ", note_author=" + note_author +", img=" + img + ", status=" + status + "]";
	}
	

}
