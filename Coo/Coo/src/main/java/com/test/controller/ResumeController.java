package com.test.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.shiro.authc.AuthenticationToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.test.entity.CheckResume;
import com.test.entity.Demo;
import com.test.entity.Education;
import com.test.entity.Except;
import com.test.entity.Experience;
import com.test.entity.Ext;
import com.test.entity.Hire;
import com.test.entity.HireAndResume;
import com.test.entity.User;
import com.test.service.PostService;
import com.test.service.ResumeService;

@Controller
public class ResumeController {
	@Autowired
	private ResumeService resumeService;
//简历信息展示
	@RequestMapping(value="/preach/search")
	public String showResume(HttpSession session) {
		
		return "personCenter";
	}
	@RequestMapping(value="/preach/search/resume")
	public String showResume1(HttpSession session) {
		System.out.println("coming!!!");
		Demo demo = resumeService.selectById(1l);
		System.out.println(demo);
		Long userId = demo.getbUserId();
		System.out.println(userId);
		Ext ext = resumeService.selectExtById(userId);
		System.out.println(ext);
		ext.setStart_time(ext.getBegin_year()+"."+ext.getBegin_month());
		ext.setEnd_time(ext.getEnd_year()+"."+ext.getEnd_month());
		ext.setGo_time(ext.getRepy()+"-"+ext.getRepm()+"-"+ext.getRepd());
		System.out.println(demo.getSex());
		System.out.println(demo);
		String birthday = demo.getBirthday();
		String birString = birthday.substring(birthday.length()-1, birthday.length());
		String birthm = "0"+birString;
		System.out.println(birthm);
		demo.setBirthm(birthm);
		session.setAttribute("user", demo);
		session.setAttribute("ext", ext);
		return "resume";
	}
	@RequestMapping(value="/preach/search/hihi")
	public String showExcept(HttpSession session,String username) {
		
		
		Demo demo = resumeService.selectByUserName(username);
		System.out.println(demo.getSex());
		System.out.println(demo);
		String birthday = demo.getBirthday();
		String birString = birthday.substring(birthday.length()-1, birthday.length());
		String birthm = "0"+birString;
		System.out.println(birthm);
		demo.setBirthm(birthm);
		session.setAttribute("user", demo);
		return "resume";
	}
	@RequestMapping(value = "/modifyPersonInfo")
	public String Demo(HttpServletRequest request,String userName) {
		System.out.println("llll");
		String userName1=request.getParameter("userName");
		String telep=request.getParameter("telep");
		String email=request.getParameter("email");
		Integer status=Integer.parseInt(request.getParameter("status"));
		System.out.println(userName1);
		User user=new User();
		user.setTelep(telep);
		user.setEmail(email);
		user.setUserName(userName1);
		user.setStatus(status);
		System.out.println(user.toString()+"ssss");
		resumeService.modifyUserInfor(user);
		return "redirect:/user/toShowUser?userName="+userName1;
//		return "个人中心";
	}
	@RequestMapping(value = "/modifyExperienceInfo")
	public String modifyExperience(HttpServletRequest request,String userName) throws UnsupportedEncodingException {
		System.out.println("llll");
		String userName1=new String(request.getParameter("userName").trim().getBytes("ISO-8859-1"),"UTF-8");
		String oldcompany_name=new String(request.getParameter("oldcompany_name").trim().getBytes("ISO-8859-1"),"UTF-8");
		String experience_job=new String(request.getParameter("experience_job").trim().getBytes("ISO-8859-1"),"UTF-8");
		String experience_time=new String(request.getParameter("experience_time").trim().getBytes("ISO-8859-1"),"UTF-8");
		String experience_location=new String(request.getParameter("experience_location").trim().getBytes("ISO-8859-1"),"UTF-8");
		String experience_duty=new String(request.getParameter("experience_duty").trim().getBytes("ISO-8859-1"),"UTF-8");
		
		Experience experience=new Experience();
		experience.setOldcompany_name(oldcompany_name);
		experience.setExperience_job(experience_job);
		experience.setExperience_time(experience_time);
		experience.setExperience_location(experience_location);
		experience.setExperience_duty(experience_duty);
		experience.setUserName(userName1);
		resumeService.modifyExperience(experience);
		return "redirect:/user/toShowUser?userName="+userName1;
//		return "个人中心";
	}
	@RequestMapping(value = "/modifyEducationInfo")
	public String modifyEducation(HttpServletRequest request,String userName) throws UnsupportedEncodingException {
		System.out.println("llll");
		String userName1=new String(request.getParameter("userName").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_school=new String(request.getParameter("education_school").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_time=new String(request.getParameter("education_time").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_education=new String(request.getParameter("education_education").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_major=new String(request.getParameter("education_major").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_majortype=new String(request.getParameter("education_majortype").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_list=new String(request.getParameter("education_list").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_course=new String(request.getParameter("education_course").trim().getBytes("ISO-8859-1"),"UTF-8");
		String education_honor=new String(request.getParameter("education_honor").trim().getBytes("ISO-8859-1"),"UTF-8");
		Integer status=Integer.parseInt(request.getParameter("status"));
		Education education=new Education();
		education.setEducation_school(education_school);
		education.setEducation_time(education_time);
		education.setEducation_education(education_education);
		education.setEducation_major(education_major);
		education.setEducation_majortype(education_majortype);
		education.setEducation_list(education_list);
		education.setEducation_course(education_course);
		education.setEducation_honor(education_honor);
		education.setUserName(userName1);
		education.setStatus(status);
		resumeService.modifyEducation(education);
		return "redirect:/user/toShowUser?userName="+userName1;
//		return "个人中心";
	}
	@ResponseBody
	@RequestMapping(value="/personnel/modify/resume/test",method = RequestMethod.POST)
	public String showBaseInfo(HttpSession session,HttpServletRequest request,String guuid,String ruuid, String stype, String sdtoken,String mod,
			String rname,Integer gender,String birthy,String birthm,String country,String bcity,String telep,String email,String headpic,Long bUserId) {
		System.out.println("finishi");
		System.out.println("coming");
		System.out.println(guuid);
		
		Demo demo = new Demo();
		demo.setbUserId(bUserId);
		demo.setBcity(bcity);
		demo.setBirthm(birthm);
		String birthday = birthy + "-" + birthm;
		demo.setBirthday(birthday);
		demo.setCountry(country);
		demo.setEmail(email);
		demo.setGender(gender);
		demo.setGuuid(guuid);
		demo.setTelep(telep);
		demo.setHeadpic(headpic);
		demo.setvUserName(rname);
		System.out.println(demo.getvUserName()+"-----");
		demo.setRuuid(ruuid);
		
		System.out.println(demo);
		System.out.println("-----------");
		resumeService.updateUserInfo(demo);
		Demo demo2 = resumeService.selectById(bUserId);
		
		System.out.println(demo2);
		

		JSONObject jo = new JSONObject();
        if(demo2!=null) {
    	    jo.put("msg",demo2);
        }else {
     	    jo.put("msg","no");
        }
        return jo.toString();
	}
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value="/personnel/modify/resume",method = RequestMethod.POST)
	public String showTest(HttpSession session,HttpServletRequest request,String params) {
		System.out.println("ext");
		System.out.println("coming");
		System.out.println(params);
		JSONObject jsonobj = JSON.parseObject(params);
		String mod = (String)jsonobj.get("mod");

		
		System.out.println(mod);
		String job = jsonobj.getJSONObject("cont").getString("job");
		String cty = jsonobj.getJSONObject("cont").getString("cty");
		Integer day = jsonobj.getJSONObject("cont").getInteger("day");
		String begin_year = jsonobj.getJSONObject("cont").getString("begin_year");
		String begin_month = jsonobj.getJSONObject("cont").getString("begin_month");
		String end_year = jsonobj.getJSONObject("cont").getString("end_year");
		String end_month = jsonobj.getJSONObject("cont").getString("end_month");
		Integer sly = jsonobj.getJSONObject("cont").getInteger("sly");
		String repy = jsonobj.getJSONObject("cont").getString("repy");
		String repm = jsonobj.getJSONObject("cont").getString("repm");
		String repd = jsonobj.getJSONObject("cont").getString("repd");
		Ext ext = new Ext();
		ext.setMod(mod);
		ext.setDay(day);
		ext.setCty(cty);
		ext.setBegin_year(begin_year);
		ext.setBegin_month(begin_month);
		ext.setEnd_month(end_month);
		ext.setEnd_year(end_year);
		ext.setSly(sly);
		ext.setRepd(repd);
		ext.setRepm(repm);
		ext.setRepy(repy);
		ext.setJob(job);
		ext.setExcept_id(1);
		System.out.println(ext);
		resumeService.updateExtInfo(ext);
		Ext ext2 = resumeService.selectByExtId(ext.getExcept_id());
		ext2.setCode(100);
		System.out.println(ext2);
		JSONObject jo = new JSONObject();
        if(ext2!=null) {
    	    jo.put("msg",ext2);
        }else {
     	    jo.put("msg","no");
        }
        
        return jo.toString();
	}
	
	@RequestMapping("/resume/apply")
	public String resumeApply(String company_id,String post_id,String username) {
		//System.out.println(company_id);
		
		System.out.println(post_id);
		Integer postid=Integer.parseInt(post_id);
		String company_name=resumeService.selectCompanyName(postid);
		System.out.println(username);
		Integer userid=resumeService.selelectByUsername(username);
		Integer status=0;
		System.out.println(userid);
		Hire hire=new Hire();
//		hire.setPerson_id(userid);
		hire.setPost_id(postid);
		hire.setCompany_name(company_name);
		hire.setStatus(status);
		resumeService.insertHire(hire);
		
		
		
//		User user = resumeService.selelectByUsername(username);
//		Long userId = user.getUserId();
//		System.out.println(userId);
		return "redirect:/preach/search";
	}
	
	@RequestMapping("check_post")
	public void check(HttpServletRequest req,HttpServletResponse response) throws IOException {
		System.out.println("coming444");
		PrintWriter out = response.getWriter();
		Map<String,String> result = new HashMap<String,String>();
        boolean flag = false;
        try{
            String para= req.getParameter("para");
            String profile_demoid= req.getParameter("profile_demoid");
            String username_demoid= req.getParameter("username_demoid");
            String post_demoid = req.getParameter("post_demoid");
            System.out.println(profile_demoid);//1
            System.out.println(username_demoid);//yyyy
            System.out.println(post_demoid);//1
            System.out.println(para);//1
            
            CheckResume checkResume = resumeService.selectHireAndResume(username_demoid);
//            System.out.println(checkResume.getEducation_id());
//            System.out.println(checkResume.getExperience_id());
            if(StringUtils.isEmpty(checkResume.getEducation_id()) || StringUtils.isEmpty(checkResume.getExperience_id())) {
	            result.put("flag", "false");
	            String retJson = JSON.toJSONString(result);
	            out.write(retJson);
	            return;
            }
            Integer postid=Integer.parseInt(post_demoid);
            System.out.println("postid:"+postid);
    		String company_name=resumeService.selectCompanyName(postid);
//    		System.out.println(username);
    		Integer userid=resumeService.selelectByUsername(username_demoid);
    		Integer status=0;
    		System.out.println(userid);
    		Hire hire=new Hire();
//    		hire.setPerson_id(userid);
    		hire.setUserName(username_demoid);
    		hire.setPost_id(postid);
    		hire.setCompany_name(company_name);
    		hire.setStatus(status);
    		System.out.println(hire);
    		resumeService.insertHire(hire);
            result.put("flag", "true");
            String retJson = JSON.toJSONString(result);
            out.write(retJson);
            //返回json数据
        }catch(Exception e){
            result.put("flag", flag+"");
            result.put("errorMsg", e.getMessage());
            String retJson = JSON.toJSONString(result);
            out.write(retJson);//返回json数据
            e.printStackTrace();
        }
		
	}
	@RequestMapping("/resume/tomodifyresumestatus")
	public String toModifyEducationStatus(HttpSession session,Integer education_id) {
		System.out.println("简历ID："+education_id);
		session.setAttribute("education_id", education_id);
		return "简历状态修改";
	}
	@RequestMapping("/modifyEducationStatus")
	public String modifyEducationStatus(HttpServletRequest req,Integer education_id) {
	Integer status=Integer.parseInt(req.getParameter("status"));
	Education education=new Education();
	education.setStatus(status);
	education.setEducation_id(education_id);
	
	resumeService.modifyEducationStatus(education);
	System.out.println("状态修改成功！");
	return "redirect:/selectUsers";
}
}
