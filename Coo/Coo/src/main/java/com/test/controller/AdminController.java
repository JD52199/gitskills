package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin.do")
	public String toAdmin() {
		return "bgindex";
	}
	
	@RequestMapping("/admin/adminnotelisr")
	public String adminNoteList() {
		return "查看帖子";
	}
	
	@RequestMapping("/admin/admininfo")
	public String adminInfo() {
		return "管理员信息";
	}
	@RequestMapping("/admin/modifypwd")
	public String modifyPwd() {
		return "修改管理员密码";
	}
	@RequestMapping("/admin/personaudit")
	public String personAudit() {
		return "个人信息审核";
	}
	@RequestMapping("/admin/companyaudit")
	public String companyAudit() {
		return "企业信息审核";
	}
	@RequestMapping("/admin/resumeaudit")
	public String resumeAudit() {
		
		return "简历审核";
	}
	@RequestMapping("/admin/postaudit")
	public String postAudit() {
		return "职位审核";
	}
	@RequestMapping("/admin/noteaudit")
	public String noteAudit() {
		return "帖子审核";
	}
	@RequestMapping(value = "/toRegister")
	public String toRegister() {
		return "register";
	}
}
