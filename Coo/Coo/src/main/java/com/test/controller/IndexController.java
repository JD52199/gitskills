package com.test.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.test.service.UserService;
import com.test.shiro.realm.UserRealm;


@Controller
public class IndexController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView index(HttpServletRequest req,HttpSession session){
		
		String userName = UserRealm.getUsername();
		//String btn=req.getParameter("btn1");
		
		System.out.println(userName+"))))))))");
		
		int flag = userService.selectFlag(userName);//判断是企业用户还是求职用户
		System.out.println(flag);
		if(flag==0) {//企业
			String imgUrl=userService.findImgUrl(userName);
		    session.setAttribute("imgUrl", imgUrl);
			System.out.println("图片地址是："+imgUrl);
			ModelAndView mov=new ModelAndView("index22");
			mov.addObject("username", userName);
			session.setAttribute("username", userName);
			return mov;
		}else{//求职者
		String imgUrl=userService.findImgUrl(userName);
	    session.setAttribute("imgUrl", imgUrl);
		System.out.println("图片地址是："+imgUrl);
		session.setAttribute("username", userName);
		ModelAndView mov=new ModelAndView("main");
		
		return mov;
		}
	}
}
