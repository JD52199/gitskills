package com.test.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.itheima.common.utils.Page;
import com.test.entity.Post;
import com.test.entity.PostAndCompany;
import com.test.service.PostService;

@Controller
public class PostController {
	@Autowired
	private PostService postService;
	@RequestMapping(value="/deliverResume")
	public String deliveryResume() {
		return "deliverresume";
	}
	@RequestMapping(value="/jobAudit")
	public String jobAudit(HttpSession session) {
		List<Post> postList=postService.selectPostList();
		session.setAttribute("postList", postList);
		return "joblist";
	}
//	校园招聘和企业招聘
	@RequestMapping(value = "/recruit")
	public String showCompany(String k,int p,String username,Model model,HttpSession session) {
		int rows = 5;
		System.out.println(username+"jjjjjj");
		Page<PostAndCompany> postList = postService.selectPostByRecType(k,p,rows);//根据职位类型查询
		model.addAttribute("page", postList);
		session.setAttribute("username", username);
		return "recruitlist";
	}
	//校园招聘和企业招聘分页
	@RequestMapping(value="/recruitAudit")
	public String showRecruit(HttpSession session,String k,Integer p,Integer page,
			Integer rows,Model model) {
		//k:类别，page：页数，rows：行
		Page<PostAndCompany> postAndCompanys = null;
		if(page != null && rows == null) {
			postAndCompanys = postService.selectPostByRecType(k,page, 5);
		}else if(page!=null && rows != null) {
			postAndCompanys = postService.selectPostByRecType(k,page, 5);
		}
		
		model.addAttribute("page",postAndCompanys);
		return "recruitlist";
	}
	
	
	
//  职位列表展示
	@RequestMapping(value="/jobs/c-100000")
	public String showPostList(String k, int p,HttpSession session,Model model,String username) {
		int rows = 5;
		//k: 职位类型，rows：每页显示的数据
		Page<PostAndCompany> postList = postService.selectPostByType(k,p,rows);//根据职位类型查询
		model.addAttribute("page", postList);
		session.setAttribute("username", username);
		return "joblist";
	}
	
	//职位列表分页
	@RequestMapping(value="/personAudit")
	public String showPersonAudit(HttpSession session,String k,Integer p,Integer page,
			Integer rows,Model model) {
		
		Page<PostAndCompany> postAndCompanys = null;
		if(page != null && rows == null) {
			postAndCompanys = postService.selectPostByType(k,page, 5);
		}else if(page!=null && rows != null) {
			postAndCompanys = postService.selectPostByType(k,page, 5);
		}
		
		model.addAttribute("page",postAndCompanys);
		return "joblist";
	}
	
	
	//职位详情查询
//	@RequestMapping(value="/jobs/job/1")
//	public String showJobDetail(Integer post_id,HttpSession session) {
//		PostAndCompany postDetail = postService.selectPostById(post_id);//根据点击的职位项
//		Date post_publish = postDetail.getPost_publish();
//		long time = post_publish.getTime();
//		Date date = new Date(time);
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		String format = sdf.format(date);
//		postDetail.setEndTime(format);
//		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		String detailTime = sdf1.format(date);
//		postDetail.setDetailTime(detailTime);
//		session.setAttribute("postDetail", postDetail);
//		return "jobdetail";
//	}
	
	@RequestMapping("/post/listpost")
	public String showPostList(HttpSession session) {
		List<Post> listpost=postService.selectPostList();
		session.setAttribute("listpost", listpost);
		return "职位审核";
	}
	@RequestMapping("/post/tomodifypoststatus")
	public String toModifyPostStatus(HttpSession session,Integer post_id) {
		session.setAttribute("post_id", post_id);
		return "职位状态修改";
	}
	@RequestMapping("/post/modifypoststatus")
	public String modifyPostStatus(Integer post_id,HttpServletRequest req) {
		Integer status=Integer.parseInt(req.getParameter("status"));
		Post post=new Post();
		post.setPost_id(post_id);
		post.setStatus(status);
		postService.modifyPostStatus(post);
		return "redirect:/post/listpost";
	}
	
//	按公司和岗位搜索
	@RequestMapping(value = "/search")
	public String searchCompany(String k,int p,Model model,HttpSession session,String username) {
		int rows = 10;
		Page<PostAndCompany> postList = postService.selectPostBySearch(k,p,rows);//根据职位类型查询
		List<PostAndCompany> rows2 = postList.getRows();
		model.addAttribute("page", postList);
		session.setAttribute("username", username);
		return "findist";
	}
//	分页按钮跳转
	@RequestMapping(value = "/searchlist")
	public String searchCompan(HttpSession session,String k,Integer p,Integer page,
			Integer rows,Model model) {
		Page<PostAndCompany> postAndCompanys = null;
		if(page != null && rows == null) {
			postAndCompanys = postService.selectPostBySearch(k,page, 10);
		}else if(page!=null && rows != null) {
			postAndCompanys = postService.selectPostBySearch(k,page, 10);
		}
		
		model.addAttribute("page",postAndCompanys);
		return "findist";
	}
	
	
	@RequestMapping("/jobs/Recruit/job")
	public String resumeDetail(Integer post_id,HttpSession session,String username) {
	   
		PostAndCompany postDetail = postService.selectPostById(post_id);
		session.setAttribute("postDetail", postDetail);
		session.setAttribute("username", username);
		return "jobdetail";
	}
	
}
