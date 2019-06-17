<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true"%>
      <%@ page import="java.util.*" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台登录-X-admin2.0</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

</head>
<body>
    <!-- 顶部开始 -->
    <div class="container">
        <div class="logo"><a href="./index.html">企业系统端</a></div>
        <ul class="layui-nav left fast-add" lay-filter="">
          <li class="layui-nav-item">

            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>
              <dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>
               <dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>
            </dl>
          </li>
        </ul>
        <ul class="layui-nav right" lay-filter="">
          <li class="layui-nav-item">
            <a href="javascript:;">${username }</a>
            <dl class="layui-nav-child"> <!-- 二级菜单 -->
              <dd><a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a></dd>
              <dd><a onclick="x_admin_show('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
              <dd><a href="./login.html">退出</a></dd>
            </dl>
          </li>
          <li class="layui-nav-item to-index"><img width="45px" height="45px" src="${pageContext.request.contextPath}/upload/${imgUrl}"/><!-- <a href="/">前台首页</a> --></li>
        </ul>
        
    </div>
    <!-- 顶部结束 -->
    <!-- 中部开始 -->
     <!-- 左侧菜单开始 -->
    <div class="left-nav">
      <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>职位管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/company/joblist?company_name=${username}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>职位列表</cite>
                            
                        </a>
                    </li >
                     <li>
                        <a _href="${pageContext.request.contextPath}/company/joblistinfoadd?username=${username }">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>增加职位</cite>
                        </a>
                    </li >
 
                    <li>
                        <a _href="${pageContext.request.contextPath}/company/resumelist?company_name=${username }">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>查看简历</cite>

                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>论坛</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <%-- <a _href="${pageContext.request.contextPath}/company/notecenter">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>论坛中心</cite>
                        </a> --%>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/company/viewnote">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>查看论坛</cite>
                        </a>
                    </li >
                    <li>
                        <a _href="${pageContext.request.contextPath}/company/sendnote?company_name=${username}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>发布帖子</cite>
                        </a>
                    </li >
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe726;</i>
                    <cite>企业中心</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="${pageContext.request.contextPath}/company/companyinfo?company_name=${username}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>公司信息</cite>
                        </a>
                    </li >
                    <li>
                       <%--  <a _href="${pageContext.request.contextPath}/company/modifycompanypwd?company_name=${username}">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>修改密码</cite>
                        </a> --%>
                    </li >
                    <li>
                      <%--   <a _href="${pageContext.request.contextPath}/welcome2.jsp">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>我的桌面</cite>
                        </a> --%>
                    </li >
                </ul>
            </li>
        </ul>
      </div>
    </div>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
   <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
         <ul class="layui-tab-title">
            <li><!-- 我的桌面 --></li>
          </ul>
          <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <%-- <iframe src='${pageContext.request.contextPath}/welcome2.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe> --%>
            </div>
          </div>
        </div>
    </div> 
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">Copyright ©2017 x-admin v2.3 All Rights Reserved</div>
    </div>
    <!-- 底部结束 -->
    <script>
    //百度统计可去掉
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
      var s = document.getElementsByTagName("script")[0]; 
      s.parentNode.insertBefore(hm, s);
    })();
    </script>
</body>
</html>