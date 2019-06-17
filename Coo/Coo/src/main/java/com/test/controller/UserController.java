package com.test.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.test.entity.Comment2;
import com.test.entity.Education;
import com.test.entity.Experience;
import com.test.entity.HireAndResume;
import com.test.entity.Note2;
import com.test.entity.User;
import com.test.service.PasswordService;
import com.test.service.RoleService;
import com.test.service.UserService;
import com.test.shiro.realm.UserRealm;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private PasswordService passwordService;
	//登录验证
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req,HttpSession session){
		String parameter = req.getParameter("account_name");
		System.out.println(parameter+"++++++");
		String error=null;
		String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(exceptionClassName != null) {
            error = "其他错误" + exceptionClassName;
        }
        String username = UserRealm.getUsername();
      
		session.setAttribute("username", username);
	   
        System.out.println(username+"111111");
        ModelAndView mav=new ModelAndView("login22");
        
        mav.addObject("error", error);
		return mav;
	}
	//注册
	@RequestMapping("/add/regsiter")
	@ResponseBody
	public ModelAndView addUser1(User user,Long roleIds){
		System.out.println(user.getUserName()+"+"+user.getPassword()+"注册");
		userService.addUser(user, roleIds);
		ModelAndView mav=new ModelAndView("redirect:/user/login");
		return mav;
	}
	@RequiresPermissions("user:list")
	@RequestMapping("/list")
	public ModelAndView showUserList(){
		List list=userService.getAllUsers();
		ModelAndView mav=new ModelAndView("user-list");
		mav.addObject("users", list);
		return mav;
	}
	
	@RequiresPermissions("user:add")
	@RequestMapping("/add")
	@ResponseBody
	public User addUser(User user,Long...roleIds){
		System.out.println(user.getUserName()+"+"+user.getPassword()+"zhuce");
		userService.addUser(user, roleIds);
		return user;
	}
	
	//@RequiresPermissions("user:add")
	
	
	@RequiresPermissions("user:showroles")
	@RequestMapping("/showroles")
	@ResponseBody
	public List shwoRoles(String userName){
		return roleService.getRolesByUserName(userName);
	}

	@RequiresPermissions("role:list")
	@RequestMapping("/listRoles")
	@ResponseBody
	public List getRoles(){
		return roleService.getAllRoles();
	}
	
	@RequiresPermissions("user:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteUser(Long userId){
		userService.deleteUser(userId);
	}
	
	@RequiresPermissions("user:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreUsers(Long...userIds){
		userService.deleteMoreUsers(userIds);
	}
	@RequiresPermissions("user:corelationrole")
	@RequestMapping("/corelationRole")
	@ResponseBody
	public void corelationRole(Long userId,Long...roleIds){
		userService.updateUserRoles(userId, roleIds);
	}
	@RequestMapping("/company/modifypwd")
	public String modifyPwd(HttpServletRequest req,String company_name) throws UnsupportedEncodingException {
		String name = req.getParameter("username");
		System.out.println(name+"11");
		String username=new String(req.getParameter("company_name").trim().getBytes("ISO-8859-1"),"UTF-8");
		String oldpwd=new String(req.getParameter("oldpass").trim().getBytes("ISO-8859-1"),"UTF-8");
		
		System.out.println(oldpwd);
		String newpwd=new String(req.getParameter("newpass").trim().getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(newpwd);
		User olduser=userService.getUserByUserName(username);
		String oldMd5Pwd=olduser.getPassword();
		
		System.out.println(oldMd5Pwd);
		
		User user=new User();
		user.setRname(username);
		user.setPassword(newpwd);
		passwordService.encryptPassword(user);
		String newMd5pwd=user.getPassword();
		System.out.println(newMd5pwd);
		//System.out.println(pwd);
		if(oldMd5Pwd.equals(newMd5pwd)) {
			userService.modifyPwd(user);
			System.out.println("密码修改成功！");
		}else {
			System.out.println("修改密码失败！");
		}
		return "修改企业密码";
		
	}
	@RequestMapping("/selectUsers")
	public String selectUsers(HttpSession session) {
		List<User> listuser=userService.selectUsers();
		System.out.println(listuser.toString());
		for (User user : listuser) {
			System.out.println(user);
		}
		session.setAttribute("listuser", listuser);
		return "个人信息审核";
	}
	@RequestMapping("/selectEducation")
	public String selectEducation(HttpSession session) {
		List<Education> listeducation=userService.selectListEducation();
		System.out.println(listeducation.toString());
		session.setAttribute("listeducation", listeducation);
		return "简历审核";
	}
	@RequestMapping("/tomodifystatus")
	public String toModifyStatus(String userName,HttpSession session) {
		System.out.println(userName);
		session.setAttribute("userName", userName);
		
		return "状态修改";
	}
	@RequestMapping("/modifystatus")
	public String modifyStatus(HttpServletRequest req,String userName) throws UnsupportedEncodingException {
		
		Integer status=Integer.parseInt(req.getParameter("status"));
		User user=new User();
		user.setUserName(userName);
		System.out.println(userName);
		user.setStatus(status);
		System.out.println(user.getStatus()+"lllll");
		userService.updateUserStatus(user);
		System.out.println("状态修改成功！");
		return "redirect:/selectUsers";
	}
	@RequestMapping("/toShowUser")
	public String toShowUserInfo(HttpSession session,String userName) {
		System.out.println(userName);
		User user=userService.selectUser(userName);
		Experience experience=userService.selectExperience(userName);
		Education education=userService.selectEducation(userName);
		List<HireAndResume> hireAndResume=userService.selectResume(userName);
		for (HireAndResume hireAndResume2 : hireAndResume) {
			System.out.println(hireAndResume2.getCompany_name()+"dddd");
		}
//		System.out.println(education);
//		System.out.println(experience);
//		System.out.println(user);
		session.setAttribute("user", user);
		session.setAttribute("experience", experience);
		session.setAttribute("education", education);
		session.setAttribute("hireAndResume", hireAndResume);
		System.out.println(user+"zzzz");
		return "个人中心";
	}
	@RequestMapping("/viewnote")
	public String viewNote(HttpSession session) {
		List<Note2> notelist=userService.selectNote();//查看帖子
		session.setAttribute("notelist",notelist);
		return "求职者查看论坛";
	}
//	@RequestMapping("/notedetail")
//	public String NoteDetail(Integer note_id,HttpServletRequest req,HttpSession session) {
//		Integer noteid=Integer.parseInt(req.getParameter("note_id"));
//		Note2 note2=companyService.selectDetailNote(noteid);
//		String note_author = note2.getNote_author();
//		List<Note2> note3 = companyService.selectImg(note_author);
//		String imgUrl = "";
//		for (Note2 note22 : note3) {
//			 imgUrl = note22.getImg();
//		}
//		System.out.println(imgUrl+"000000000");
////		session.setAttribute("img", imgUrl);
//		note2.setImg(imgUrl);
//		
//		System.out.println(note2+"========");
//		
//		session.setAttribute("note2", note2);
//		List<Comment2> listcomment=companyService.showComment(note_id);
//		for (Comment2 comment2 : listcomment) {
//			System.out.println(comment2);
//		}
//		session.setAttribute("listcomment", listcomment);
//		System.out.println(listcomment.toString());
//		return "论坛详情";
//	}
	@RequestMapping("/sendnote")
	public String sendNote(HttpServletRequest req,String userName,HttpSession session) {
		
		System.out.println(userName+"----");
		session.setAttribute("userName", userName);
		return "求职者发帖";
	}
	@RequestMapping("/insernote")
	public String insertNote(HttpServletRequest req,String note_author) throws UnsupportedEncodingException {
		String note_title=new String(req.getParameter("note_title").trim().getBytes("ISO-8859-1"), "UTF-8"); 
		String note_content=new String(req.getParameter("note_content").trim().getBytes("ISO-8859-1"),"UTF-8");
		//Integer status=Integer.parseInt("status");
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
		userService.insertNote(note2);
		System.out.println(note2);
		return "redirect:/user/viewnote";
	}
	
}
