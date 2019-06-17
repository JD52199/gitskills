
package com.test.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.credential.PasswordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itheima.common.utils.SendMail;
import com.test.entity.Comment2;
import com.test.entity.Company;
import com.test.entity.Company2;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.Img;
import com.test.entity.Note2;
import com.test.entity.Post;
import com.test.entity.User;
import com.test.service.CompanyService;

@Controller
public class CompanyController {
	@Autowired
	private CompanyService companyService;
//	private CommentController commentController;
//	private PasswordService passwordService;
	@RequestMapping("/company/joblist")
	public String addJob(HttpSession session,String company_name) {
		//List<Job> jobList = companyService.selectJobList();
		List<Post> postList = companyService.selectPostList(company_name);
		for (Post post : postList) {		
			if(post.getStatus()==1) {
				post.setStatus_cc("已审核");
			}else if(post.getStatus()==0){
				post.setStatus_cc("未审核");
			}
		}
		System.out.println(postList);
		session.setAttribute("company_name", company_name);
		session.setAttribute("postList", postList);
		return "职位列表";
	}
	
	@RequestMapping("/company/publishjob")
	public String publishJob(String username,HttpSession session) {
		System.out.println(username);
		session.setAttribute("username", username);
		return "发布职位";
	}
//	@RequestMapping("/company/addjob")
//	public String addJob(String post_name,String post_type,String post_location,String post_salary,
//			String post_education,String post_publish,String post_correctiontime,String post_worktime,
//			String practice_time,String post_benefit,String post_duty,String post_require) {
//		System.out.println("即哪里了");
//		System.out.println(post_name);
//		return "职位列表";
//	}
	@RequestMapping("/company/joblistinfoadd")
	public String toaddJob(String username,HttpSession session) {
		System.out.println(username);
		session.setAttribute("username", username);
		return "jobInfolist";
	}
	@RequestMapping("/company/addjob")
	public String addJob(HttpServletRequest req,String username) throws UnsupportedEncodingException {
		System.out.println("coming");
		//String company_name=req.getParameter("username");
		//System.out.println(company_name);
		System.out.println(username+"kkkkkkkkkkkkkk");
		String post_name =new String(req.getParameter("post_name").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		System.out.println(post_name);
		String post_type =new String(req.getParameter("post_type").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_location =new String(req.getParameter("post_location").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		int post_salary =Integer.parseInt(new String(req.getParameter("post_salary").trim().getBytes("ISO-8859-1"), "UTF-8")); 
		String post_education =new String(req.getParameter("post_education").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_publish =new String(req.getParameter("post_publish").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_correctiontime =new String(req.getParameter("post_correctiontime").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String practice_time =new String(req.getParameter("practice_time").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_worktime = new String(req.getParameter("post_worktime").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_benefit =new String(req.getParameter("post_benefit").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_duty =new String(req.getParameter("post_duty").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_require =new String(req.getParameter("post_require").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		//int status =Integer.parseInt(new String(req.getParameter("status").trim().getBytes("ISO-8859-1"), "UTF-8")); 
		int status=0;
		Post post = new Post();
		post.setPost_name(post_name);
		post.setPost_type(post_type);
		post.setPost_location(post_location);
		post.setPost_salary(post_salary);
		post.setPost_education(post_education);
		post.setPost_publish(post_publish);
		post.setPost_correctiontime(post_correctiontime);
		post.setPractice_time(practice_time);
		post.setPost_worktime(post_worktime);
		post.setPost_benefit(post_benefit);
		post.setPost_duty(post_duty);
		post.setPost_require(post_require);
		post.setCompany_name(username);
		post.setStatus(status);
		System.out.println(post);
		companyService.addPostInfo(post);

		return "redirect:/company/joblist?company_name="+username;
	}
	//查看职位详情
	@RequestMapping("/company/jobDetail")
	public String jobDetail(int post_id,HttpSession session,HttpServletRequest req) {
		System.out.println(post_id);
		Post post = companyService.selectPostDetailById(post_id);
		System.out.println(post);
		session.setAttribute("post", post);
		return "职位详情";
	}
	//修改职位信息
	@RequestMapping("/company/modifyPostInfo")
	public String modifyPostInfo(Integer post_id,HttpSession session,HttpServletRequest req) {
		Post post = companyService.selectPostDetailById(post_id);
		session.setAttribute("post", post); 
		return "修改职位信息";
	}
	//更新职位
	@RequestMapping("/company/updatePostInfo")
	public String updatePostInfo(HttpServletRequest req) throws UnsupportedEncodingException {
		int post_id = Integer.parseInt(req.getParameter("post_id"));
		String post_name =new String(req.getParameter("post_name").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_type =new String(req.getParameter("post_type").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_location =new String(req.getParameter("post_location").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		int post_salary =Integer.parseInt(new String(req.getParameter("post_salary").trim().getBytes("ISO-8859-1"), "UTF-8")); 
		String post_education =new String(req.getParameter("post_education").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_publish =new String(req.getParameter("post_publish").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		
		String post_correctiontime =new String(req.getParameter("post_correctiontime").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String practice_time =new String(req.getParameter("practice_time").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_worktime = new String(req.getParameter("post_worktime").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_benefit =new String(req.getParameter("post_benefit").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		
		String post_duty =new String(req.getParameter("post_duty").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String post_require =new String(req.getParameter("post_require").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		int status =Integer.parseInt(new String(req.getParameter("status").trim().getBytes("ISO-8859-1"), "UTF-8")); 
		Post post = new Post();
		post.setPost_id(post_id);
		post.setPost_name(post_name);
		post.setPost_type(post_type);
		post.setPost_location(post_location);
		post.setPost_salary(post_salary);
		post.setPost_education(post_education);
		post.setPost_publish(post_publish);
		post.setPost_correctiontime(post_correctiontime);
		post.setPractice_time(practice_time);
		post.setPost_worktime(post_worktime);
		post.setPost_benefit(post_benefit);
		post.setPost_duty(post_duty);
		post.setPost_require(post_require);
		post.setStatus(status);
		System.out.println(post);
		companyService.updatePostInfo(post);
//		System.out.println(post_name1);
		return "redirect:/company/joblist";
	}
	@RequestMapping("/company/detelePostInfo")
	public String detelePostInfo(Integer post_id,HttpSession session) {
		System.out.println(post_id);
		System.out.println("delete");
		companyService.deletePostInfoById(post_id);
		return "redirect:/company/joblist";
	}
	@RequestMapping("/company/selectBuCondiction")
	public String selectBuCondiction(HttpServletRequest req) {
		String post_name = req.getParameter("post_name");
		//companyService.selectPostBycondition(post_name);
		return "redirect:/company/joblist";
	}
	
	@RequestMapping("/company/resumelist")
	public String resumelist(HttpSession session,String company_name) {
		System.out.println(company_name+"jdjd");
		List<HireAndResume> listhireandresume=companyService.selectHireAndResume(company_name);
		System.out.println(listhireandresume+"dadadad");
		session.setAttribute("listhireandresume", listhireandresume);
		return "简历列表";
	}
	@RequestMapping("/company/toauditresume")
	public String toAudit(HttpSession session,String hire_id) {
		System.out.println(hire_id);
		session.setAttribute("hire_id", hire_id);
		return "已查看简历";
	}
	@RequestMapping("/company/auditresume")
	public String auditresume(String hire_id,HttpServletRequest req,HttpSession session) throws Exception {
		System.out.println(hire_id);
//		String status = companyService.selectStatusByHireId(hire_id);
		Integer status=Integer.parseInt(req.getParameter("status"));
		if(status==1) {
			String userName = companyService.selectByHireId(hire_id);
			System.out.println(userName);
			String email = companyService.selectEmailByUsername(userName);
			System.out.println(email);
			
			//发邮箱
			SendMail.sendMail(email);
			
			
//			Integer status=Integer.parseInt(req.getParameter("status"));
			Integer hireid=Integer.parseInt(hire_id);
			Hire hire=new Hire();
			hire.setHire_id(hireid);
			hire.setStatus(status);
			companyService.modifyResume(hire);
			return "redirect:/company/resumelist";
		}
		return "redirect:/company/resumelist";
	}
	@RequestMapping("/company/resumedetail")
	public String resumeDetail() {
		return "简历详情";
	}
	@RequestMapping("/company/sendoffer")
	public String sendOffer() {
		return "修改职位信息";
	}
	@RequestMapping("/company/notecenter")
	public String noteCenter() {
		return "论坛中心";
	}
	@RequestMapping("/company/viewnote")
	public String viewNote(HttpSession session) {
		List<Note2> notelist=companyService.selectNote();//查看帖子
		session.setAttribute("notelist",notelist);
		return "查看论坛";
	}
	@RequestMapping("/company/sendnote")
	public String sendNote(HttpServletRequest req,String company_name,HttpSession session) {
		System.out.println(company_name+"----");
		session.setAttribute("username", company_name);
		return "发帖";
	}
	//发布帖子
	@RequestMapping("/company/insernote")
	public String insertNote(HttpServletRequest req,String note_author) throws UnsupportedEncodingException {
		String note_title=new String(req.getParameter("note_title").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String note_content=new String(req.getParameter("note_content").trim().getBytes("ISO-8859-1"),"UTF-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        String note_time = df.format(new Date());
		System.out.println("这是作者："+note_author);
		Note2 note2=new Note2();
		note2.setNote_title(note_title);
		note2.setNote_content(note_content);
		note2.setNote_time(note_time);
		note2.setNote_author(note_author);
		note2.setStatus(0);
		companyService.insertNote(note2);
		System.out.println(note2);
		return "redirect:/company/viewnote";
	}
	//帖子详情
	@RequestMapping("/company/notedetail")
	public String NoteDetail(Integer note_id,HttpServletRequest req,HttpSession session) {
		Integer noteid=Integer.parseInt(req.getParameter("note_id"));
		Note2 note2=companyService.selectDetailNote(noteid);
		String note_author = note2.getNote_author();
		List<Note2> note3 = companyService.selectImg(note_author);
		String imgUrl = "";
		for (Note2 note22 : note3) {
			 imgUrl = note22.getImg();
		}
		System.out.println(imgUrl+"000000000");
//		session.setAttribute("img", imgUrl);
		note2.setImg(imgUrl);
		
		System.out.println(note2+"========");
		
		session.setAttribute("note2", note2);
		List<Comment2> listcomment=companyService.showComment(note_id);
		for (Comment2 comment2 : listcomment) {
			System.out.println(comment2);
		}
		session.setAttribute("listcomment", listcomment);
		System.out.println(listcomment.toString());
		return "论坛详情";
	}
	
	@RequestMapping("/company/comment")
	public String commentInfo(HttpServletRequest req,HttpSession session) throws UnsupportedEncodingException {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        System.out.println(df.format(new Date()));// new Date()为获取当前系统时间
        String comment_time = df.format(new Date());
		String comment_content=new String(req.getParameter("comment_content").trim().getBytes("ISO-8859-1"),"UTF-8");
		//String comment_time=new String(req.getParameter("comment_time").trim().getBytes("ISO-8859-1"),"UTF-8");
		String comment_name=req.getParameter("comment_name");
		Integer note_id=Integer.parseInt(req.getParameter("note_id"));
		Comment2 comment2=new Comment2();
		comment2.setComment_content(comment_content);
		comment2.setComment_time(comment_time);
		comment2.setComment_name(comment_name);
		comment2.setNote_id(note_id);
		
		
		companyService.insertComment(comment2);
//		Note2 note2=companyService.selectDetailNote(note_id);
//		session.setAttribute("note2", note2);
		return "redirect:/company/notedetail?note_id="+note_id;
	}
	@RequestMapping("/company/companyinfo")
	public String companyInfo(String company_name ,HttpSession session) {
		System.out.println(company_name);
		Company2 company2=companyService.selectCompanyProfile(company_name);
		
		System.out.println(company2);
		session.setAttribute("company2", company2);
		return "企业信息";
	}
	@RequestMapping("/company/modifycompanyinfo")
	public String modifyCompanyInfo(@RequestParam("company_name") String name,@RequestParam("img")List<MultipartFile> uploadfile,HttpServletRequest req) throws UnsupportedEncodingException {
		
		String company_name=req.getParameter("company_name");
		Company2 iscompany=companyService.companyIsexists(company_name);
		
		String company_culture=req.getParameter("company_culture");
		String company_location=req.getParameter("company_location");
		String company_numbers=req.getParameter("company_numbers");
		String company_type=req.getParameter("company_type");
		String code=req.getParameter("code");
		String company_registertime=req.getParameter("company_registertime");
		String company_capital=req.getParameter("company_capital");
		Integer status=Integer.parseInt(req.getParameter("status"));
		Company2 company2=new Company2();
		User user=new User();
		company2.setCompany_name(company_name);
		//判断上传文件是否存在	
		if(!uploadfile.isEmpty()&&uploadfile.size()>0) {
			//循环输出上传文件
			for(MultipartFile file:uploadfile) {
				//获取上传文件的原始名称	
				String originalFilename=file.getOriginalFilename();
				//设置上传文件保存地址目录	
				String dirPath=req.getServletContext().getRealPath("/upload/");
				System.out.println(dirPath);
					File filePath=new File(dirPath);
					//如果保存文件地址不存在，就先创建目录
					if(!filePath.exists()) {
						filePath.mkdirs();
					}
					String imgpath=dirPath+originalFilename;
					user.setUserName(company_name);
					user.setImg(originalFilename);
					companyService.insertImg(user);
					try {
						//使用MultipartFile接口的方法完成文件上传到指定位置
						file.transferTo(new File(imgpath));
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		
		company2.setCompany_culture(company_culture);
		company2.setCompany_location(company_location);
		company2.setCompany_numbers(company_numbers);
		company2.setCompany_type(company_type);
		company2.setCode(code);
		company2.setCompany_registertime(company_registertime);
		company2.setCompany_capital(company_capital);
		company2.setStatus(status);
		System.out.println(company2);
		
		if(StringUtils.isEmpty(iscompany)) {
			companyService.insertCompanyProfile(company2);
		}else {
		companyService.ModifyCompanyProfile(company2);
		}
		return "redirect:/company/companyinfo?company_name="+company_name;
	}
//	@RequestMapping("/company/modifypwd")
//	public String modifyPwd(HttpServletRequest req,String company_name) throws UnsupportedEncodingException {
//		String name = req.getParameter("username");
//		System.out.println(name+"11");
//		String username=new String(req.getParameter("company_name").trim().getBytes("ISO-8859-1"),"UTF-8");
//		String oldpwd=new String(req.getParameter("oldpass").trim().getBytes("ISO-8859-1"),"UTF-8");
//		System.out.println(oldpwd);
//		String newpwd=new String(req.getParameter("newpass").trim().getBytes("ISO-8859-1"),"UTF-8");
//		
//		String pwd=companyService.selectPwd(username);
//		User user=new User();
//		user.setRname(username);
//		user.setPassword(newpwd);
//	//	passwordService.encryptPassword(user);
//		//String newMd5pwd=user.getPassword();
//		System.out.println(pwd);
//		if(oldpwd.equals(newpwd)) {
//			companyService.modifyCompanyPwd(user);
//		}else {
//			System.out.println("修改密码失败！");
//		}
//		return "修改企业密码";
//		
//	}
	@RequestMapping("company/modifycompanypwd")
	public String modifycompanypwd(HttpServletRequest req,String company_name,HttpSession session) throws UnsupportedEncodingException {
		System.out.println(company_name);
		session.setAttribute("company_name", company_name);
		/*
		 * String username=new
		 * String(req.getParameter("company_name").trim().getBytes("ISO-8859-1"),"UTF-8"
		 * ); String oldpwd=new
		 * String(req.getParameter("oldpass").trim().getBytes("ISO-8859-1"),"UTF-8");
		 * String newpwd=new
		 * String(req.getParameter("newpass").trim().getBytes("ISO-8859-1"),"UTF-8");
		 * String pwd=companyService.selectPwd(username); User user=new User();
		 * user.setRname(username); user.setPassword(newpwd); if(oldpwd.equals(pwd)) {
		 * companyService.modifyCompanyPwd(user); }else { System.out.println("修改密码失败！");
		 * }
		 */
		return "修改企业密码";
	}
	//企业信息审核
	@RequestMapping("/company/companylist")
	public String showCompangList(HttpSession session) {
		List<Company2> listcompany=companyService.showCompanyList();
		System.out.println(listcompany.toString());
		session.setAttribute("listcompany", listcompany);
		return "企业信息审核";
	}
	@RequestMapping("/company/tomodifycompanystatus")
	public String toModifyCompanyStatus(HttpSession session,Integer profile_id) {
		System.out.println(profile_id);
		session.setAttribute("profile_id", profile_id);
		return "企业状态修改";
	}
	//状态修改
	@RequestMapping("/company/modifycompanystatus")
	public String modifyCompanyStatus(HttpServletRequest req,Integer profile_id) {
		Integer status=Integer.parseInt(req.getParameter("status"));
		Company2 company2=new Company2();
		company2.setProfile_id(profile_id);
		company2.setStatus(status);
		companyService.modifyCompanyStatus(company2);
		System.out.println("状态修改成功");
		return "redirect:/company/companylist";
	}
}
