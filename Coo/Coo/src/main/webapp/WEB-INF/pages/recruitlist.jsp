<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page trimDirectiveWhitespaces="true"%>
      <%@ page import="java.util.* ,com.test.entity.PostAndCompany" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>职位搜索列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="Robots" content="all">
    <meta name="applicable" concent="pc">
    <!-- <style type="text/css">
    	.pagination {
			    display: inline-block;
			    padding-left: 0;
			    margin: 20px 0;
			    border-radius: 4px;
			}
    	
    </style> -->
    
   <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" />  
   <%--  <!-- DataTables CSS -->
	<link href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/boot-crm.css" rel="stylesheet" type="text/css" /> --%>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/style.css?v=c765fd25d13a7df4f2ae81e2232a3f0b"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/n_base.css?v=cd01560d69373b9cb4b8c06e045303ea"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/register_index.css?v=986caf6accfd2f74ab2429c87a5ede5b"/>
    	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	
	<!-- MetisMenu CSS -->
	<link href="${pageContext.request.contextPath}/css/metisMenu.min.css" rel="stylesheet" />
    <style>
        .hideimg {
            width: 1px;
            height: 1px;
            display: none !important;
        }
        .links span {
            display: inline-block;
            width: 1px;
            height: 14px;
            background-color: #999;
            vertical-align: middle;
            margin: 0 20px;
            margin-top: -10px;
        }
        .links * {
            color: #999;
            font-size: 14px;
        }
        .links a {
            cursor: pointer;
        }
        .footer-info a:hover, .banner-xbs-title a > span:hover {
            text-decoration: underline;
        }
        .footer iframe {
            vertical-align: middle;
        }
        .new_xbs{
            vertical-align: middle;
            margin-bottom: 20px;
            display: inline-block;
            margin-left: -3px;
        }
    </style>

    <link rel="alternate" media="only screen and (max-width: 750px)" href="https://wap.xiaobaishixi.com/jobs">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/search-list2/base.css?v=3bf64974d6559aee87cc54114180d09d">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/search-list3.css">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/pagebar.css?v=dd925232edb465270860204478f5dc40">
    <style>
        @font-face {
            font-family: myFont;
            src: url("data:application/octet-stream;base64,")
        }
        .position-box .position .position-center ul.position-list li .info2 .area {
            background: url("https://xbimg.xiaobaishixi.com/static/nmain/img/search-list2/icon1.png?v=d48ec07cec9ddecce51147cecd216171") left center no-repeat;
        }
        .position-box .position .position-center ul.position-list li .info2 .more span:first-child {
            background-image: url("https://xbimg.xiaobaishixi.com/static/nmain/img/search-list2/icon2.png?v=fac8e686636c06166246f62531a07b56");
        }
        .position-box .position .position-center ul.position-list li .info2 .more span:nth-child(2) {
            background-image: url("https://xbimg.xiaobaishixi.com/static/nmain/img/search-list2/icon3.png?v=2f3bd39eae1f92a6852388ff53e2f5e7");
        }
        .position-box .position .position-center ul.position-list li .info2 .more span:nth-child(3) {
            background-image: url("https://xbimg.xiaobaishixi.com/static/nmain/img/search-list2/icon4.png?v=c6726c9ad768ef881bb73ec1dba5e120");
        }
        .font {
            font-family: myFont, PingFang SC, Microsoft YaHei, WenQuanYi Micro Hei, sans-serif;
        }
        .win_icon{
            float: left;
            margin-left: 10px;
        }
    </style>

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/ajax-hell.js"></script>
    <script>
        !function (g, d, t, e, v, n, s) {
            if (g.gdt) return;
            v = g.gdt = function () {
                v.tk ? v.tk.apply(v, arguments) : v.queue.push(arguments)
            };
            v.queue = [];
            n = d.createElement(t);
            n.async = !0;
            n.src = e;
            s = d.getElementsByTagName(t)[0];
            s.parentNode.insertBefore(n, s);
        }(window, document, 'script', '//qzonestyle.gtimg.cn/qzone/biz/gdt/dmp/user-action/gdtevent.min.js');


    </script>
    <noscript>
        <img height="1" width="1" style="display:none"
             src="https://a.gdt.qq.com/pixel?user_action_set_id=1106796001&action_type=PAGE_VIEW&noscript=1"/>
    </noscript>


    <script>
        (function (root) {
            root._tt_config = true;
            var ta = document.createElement('script');
            ta.type = 'text/javascript';
            ta.async = true;
            ta.src = document.location.protocol + '//' + 's3.pstatp.com/bytecom/resource/track_log/src/toutiao-track-log.js';
            ta.onerror = function () {
                var request = new XMLHttpRequest();
                var web_url = window.encodeURIComponent(window.location.href);
                var js_url = ta.src;
                var url = '//ad.toutiao.com/link_monitor/cdn_failed?web_url=' + web_url + '&js_url=' + js_url + '&convert_id=1599514697230388';
                request.open('GET', url, true);
                request.send(null);
            }
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ta, s);
        })(window);
    </script>


    <script type="text/javascript">
        window._agl = window._agl || [];
        (function () {
            _agl.push(
                ['production', '_f7L2XwGXjyszb4d1e2oxPybgD']
            );
            (function () {
                var agl = document.createElement('script');
                agl.type = 'text/javascript';
                agl.async = true;
                agl.src = 'https://fxgate.baidu.com/angelia/fcagl.js?production=_f7L2XwGXjyszb4d1e2oxPybgD';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(agl, s);
            })();
        })();
    </script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

</head>
<body>
<div class="modal-shadow">
    <div class="modal-login">
        <div class="modal-box">
            <p class="title">
                账户登录
                <img src="https://xbimg.xiaobaishixi.com/static/img/index_gps_close.png?v=8a0436d694b2971115cc5e9557f42455" class="close">
            </p>
            <div>
                <input type="text" placeholder="请输入手机号或邮箱" class="login-tel">
                <input type="password" placeholder="请输入密码" class="login-pwd">
                <div class="btn-group">
                    <a class="reset-paw" href="/usr/retrieve/password">忘记密码</a>
                    <a class="go-register" href="/usr/register?next=/my">注册账号</a>
                </div>
                <div class="login-submit">登录</div>
            </div>
        </div>
        <div class="modal-box-other">
            <div class="title">
                <span></span>
                <span>使用以下方式登录</span>
                <span></span>
            </div>
            <div class="login_ico">
                <a onclick="go_login_other('/user/sso/wechat/auth?redicturl=')"><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/login_wx.png?v=cd716def0cac309c4ed34a7c601d1c3f" alt=""></a>
                <a onclick="go_login_other('/user/sso/qq/auth?redicturl=')"><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/login_qq.png?v=1c33fc865aed8924c39092aa893e6cb8" alt=""></a>
                <a onclick="go_login_other('/user/sso/weibo/auth?redicturl=')"><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/login_sina.png?v=463f6704be723b63f8e6e0714486bcf2" alt=""></a>
                <a onclick="go_login_other('/user/sso/renren/auth?redicturl=')"><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/login_man.png?v=3c98233d59b513db0bb7b501e79faa4f" alt=""></a>
            </div>
        </div>
    </div>
</div>
<div class="wrap">
    <div class="header">
        <div class="container">



            <ul class="nav">

                <li>
                    <a  href="${pageContext.request.contextPath}/">首页</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/recruit?k=企业招聘&p=1&username=${username}">社会招聘</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/recruit?k=校园招聘&p=1&username=${username}">校园招聘</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/user/toShowUser?userName=${username}">个人中心</a>
                </li>
                <li style="padding-right: 0"><a  href="${pageContext.request.contextPath}/user/viewnote?userName=${username}" style="display: inline-block">论坛</a><img src="https://xbimg.xiaobaishixi.com/static/img/new_xbs.png?v=3f0aeac1458a45545b7c62bc00329335" class="new_xbs"/></li>
            </ul>

            <div class="links">
               <!--  <a href="/hr/index" rel="nofollow">企业入口</a>
                <span></span> -->
                <a rel="nofollow" class="student-login">欢迎您：${username}</a>
            </div>

        </div>
        <div class="sub-header">


        </div>
    </div>

    <div class="container1">
        <div class="search-bar clearfix">
            <div class="input-box">
                <input type="text" name="keyword" data-sval="" value="测试" placeholder="请输入期望实习的公司名称或岗位名称~">
            </div>
            <div class="search-btn" id="search_btn" data-stype=""
                 data-city="" data-sea=""
                 onclick="var ee = $('[data-sval]').val();document.cookie = 'search=' + ee;" data-desc="search-搜索职位">搜索
            </div>
        </div>
    </div>
    <div class="container2">
        <div style="float: left">
            <div class="filter-bar">
                <ul class="filter-list filter-condition">
                    <li class="clearfix" data-type="c">
                        <span>工作地点：</span>
                        <ul class="list-item clearfix">
                            <li data-val="" class="active">不限</li>  

                            <li data-val="海外" >
                                <span>海外</span>
                            </li>

                            <li data-val="北京" >
                                <span>北京</span>
                            </li>

                            <li data-val="上海" >
                                <span>上海</span>
                            </li>

                            <li data-val="广州" >
                                <span>广州</span>
                            </li>

                            <li data-val="c成都" >
                                <span>成都</span>
                            </li>

                            <li data-val="c深圳" >
                                <span>深圳</span>
                            </li>

                            <li data-val="武汉" >
                                <span>武汉</span>
                            </li>

                            <li data-val="c南京" >
                                <span>南京</span>
                            </li>

                            <li data-val="c天津" >
                                <span>天津</span>
                            </li>

                            <li data-val="c大连" >
                                <span>大连</span>
                            </li>

                            <li data-val="c西安" >
                                <span>西安</span>
                            </li>

                            <li data-val="c杭州" >
                                <span>杭州</span>
                            </li>

                        </ul>
                        <div class="city-more">
                            <span></span>
                            <img src="https://xbimg.xiaobaishixi.com/static/nmain/img/rt.png?v=d82b05d67a74af6c50ef03b6205dbc9a" alt="">
                        </div>
                    </li>
                    <li class="clearfix" data-type="m">
                        <span>工作期限：</span>
                        <ul class="list-item clearfix">
                            <li data-val=""
                                class="active">不限
                            </li>
                            <li data-val="m1个月
                            "
                            >一月
                            </li>
                            <li data-val="m2个月"
                            >两月
                            </li>
                            <li data-val="m3个月"
                            >三月
                            </li>
                            <li data-val="m3月以上"
                            >三月以上
                            </li>
                        </ul>
                    </li>
                    <!-- <li class="clearfix" data-type="d">
                        <span>每周上班天数：</span>
                        <ul class="list-item clearfix">
                            <li data-val=""
                                class="active">不限
                            </li>
                            <li data-val="d一天" >一天
                            </li>
                            <li data-val="d两天" >两天
                            </li>
                            <li data-val="d三天" >三天
                            </li>
                            <li data-val="d四天" >四天
                            </li>
                            <li data-val="d五天" >五天
                            </li>
                        </ul>
                    </li> -->
                    <li class="clearfix" data-type="s">
                        <span>月薪范围：</span>
                        <ul class="list-item clearfix">
                            <li data-val=""
                                class="active">不限
                            </li>
                            <li data-val="s0,100" >4000
                            </li>
                            <li data-val="s100,150" >5000
                            </li>
                            <li data-val="s150,200" >6000
                            </li>
                            <li data-val="s200,300" >7000
                            </li>
                            <li data-val="s300,0" >7000以上
                            </li>
                        </ul>
                    </li>
                    <li class="clearfix" data-type="x">
                        <span>最低学历：</span>
                        <ul class="list-item clearfix">
                            <li data-val=""
                                class="active">不限
                            </li>
                            <li data-val="e大专"
                            >大专
                            </li>
                            <li data-val="e本科"
                            >本科
                            </li>
                            <li data-val="e硕士"
                            >硕士
                            </li>
                            <li data-val="e博士"
                            >博士
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="position-box">
                <div class="filter-box clearfix">
                    <!-- <div class="fl">排序方式：</div>
                    <div class="btn btn1 fl  active " data-order="zj">
                        时间排序
                    </div>
                    <div class="btn btn2 fl " data-order="zh">相关度排序
                    </div>
                    <div class="fl release">
                        <span>发布时间：</span>
                        <select name="" id="release-select">
                            <option value=""  selected>不限</option>
                            <option value="day" >一天内</option>
                            <option value="wek" >一周内</option>
                            <option value="mon" >一月内</option>
                        </select>
                    </div> -->
                    

                    </li>
                    <div class="fr page_top">
                        <a ><</a>
                        <a href=/jobs/c-100000?k=测试&amp;p=2>></a>
                    </div>
                </div>
                <div class="position">
                    <div class="position-center clearfix">
                        <div class="position-list-box">

                            <ul class="position-list">
								<c:forEach varStatus="a" var="post" items="${page.rows }">
	                                <li class="font">
	                                    <div class="info1">
	                                        <div class="name-box clearfix">
	                                        <a class="name" href="jobs/Recruit/job?post_id=${post.post_id }&username=${username}" target="_blank" data-info="1">${post.post_name}</a>
	
	                                            <span class="release-time">2天前</span></div>
	                                        <div class="more">
	                                            <span>¥${post.comm}/天</span><span>${post.post_worktime}天/周</span><span>${post.practice_time}</span><span>${post.post_location}</span>
	                                        </div>
	                                    </div>
	                                    <div class="info2">
	                                        <div class="company-box">
	                                            <a class="company" href="/com/
	EFBSTTKN23UYJOH6K1CHBXPQOMLX0COM" target="_blank"
	                                            > ${post.company_name}</a>
	                                            <p class="type">${post.company_type}</p>
	
	                                        </div>
	                                    </div>
	                                    <div class="logo">
	                                        <a href="/com/
	EFBSTTKN23UYJOH6K1CHBXPQOMLX0COM" target="_blank">
	                                           
	                                        </a>
	                                    </div>
	                                </li>
								</c:forEach>

                            </ul>
 						<div class="col-md-12 text-right">
							<itheima:page url="${pageContext.request.contextPath }/personAudit" />
		                </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ad-box"></div>
    </div>
    <!--城市选择弹窗-->
    <div class="city-cover filter-condition">
        <div class="city-box">
<span id="close">
<img src="https://xbimg.xiaobaishixi.com/static/nmain/img/search-list2/close.png?v=a69bd2c2e8254e27528f528a545d3ef4" alt="">
</span>
            <div class="hot_city" data-type="c">
                <div class="name">
                    <span>热门城市：</span>
                </div>
                <ul class="data list-item">

                    <li data-val="990000" >
                        <span>海外</span>
                    </li>

                    <li data-val="110000" >
                        <span>北京</span>
                    </li>

                    <li data-val="310000" >
                        <span>上海</span>
                    </li>

                    <li data-val="440100" >
                        <span>广州</span>
                    </li>

                    <li data-val="510100" >
                        <span>成都</span>
                    </li>

                    <li data-val="440300" >
                        <span>深圳</span>
                    </li>

                    <li data-val="420100" >
                        <span>武汉</span>
                    </li>

                    <li data-val="320100" >
                        <span>南京</span>
                    </li>

                    <li data-val="120000" >
                        <span>天津</span>
                    </li>

                    <li data-val="210200" >
                        <span>大连</span>
                    </li>

                    <li data-val="610100" >
                        <span>西安</span>
                    </li>

                    <li data-val="330100" >
                        <span>杭州</span>
                    </li>

                </ul>
            </div>
            <div class="all_city" data-type="c">
                <div class="name">
                    <span>其他城市：</span>
                </div>
                <ul class="data list-item" data-type="c">


                    <div class="letter_div">
                        <div class="letter">A-F</div>

                        <li data-val="500000" >
                            <span>重庆</span>
                        </li>

                        <li data-val="320600" >
                            <span>南通</span>
                        </li>

                        <li data-val="230600" >
                            <span>大庆</span>
                        </li>

                        <li data-val="350100" >
                            <span>福州</span>
                        </li>

                        <li data-val="220100" >
                            <span>长春</span>
                        </li>

                        <li data-val="430100" >
                            <span>长沙</span>
                        </li>

                        <li data-val="440600" >
                            <span>佛山</span>
                        </li>

                    </div>



                    <div class="letter_div">
                        <div class="letter">G-J</div>

                        <li data-val="990000" >
                            <span>海外</span>
                        </li>

                        <li data-val="460100" >
                            <span>海口</span>
                        </li>

                        <li data-val="340100" >
                            <span>合肥</span>
                        </li>

                        <li data-val="330500" >
                            <span>湖州</span>
                        </li>

                        <li data-val="341000" >
                            <span>黄山</span>
                        </li>

                        <li data-val="520100" >
                            <span>贵阳</span>
                        </li>

                        <li data-val="370100" >
                            <span>济南</span>
                        </li>

                        <li data-val="230100" >
                            <span>哈尔滨</span>
                        </li>

                    </div>



                    <div class="letter_div">
                        <div class="letter">K-R</div>

                        <li data-val="450100" >
                            <span>南宁</span>
                        </li>

                        <li data-val="331100" >
                            <span>丽水</span>
                        </li>

                        <li data-val="350500" >
                            <span>泉州</span>
                        </li>

                        <li data-val="530700" >
                            <span>丽江</span>
                        </li>

                        <li data-val="370200" >
                            <span>青岛</span>
                        </li>

                        <li data-val="360100" >
                            <span>南昌</span>
                        </li>

                        <li data-val="620100" >
                            <span>兰州</span>
                        </li>

                        <li data-val="330200" >
                            <span>宁波</span>
                        </li>

                    </div>



                    <div class="letter_div">
                        <div class="letter">S-V</div>

                        <li data-val="320500" >
                            <span>苏州</span>
                        </li>

                        <li data-val="130100" >
                            <span>石家庄</span>
                        </li>

                        <li data-val="140100" >
                            <span>太原</span>
                        </li>

                        <li data-val="440200" >
                            <span>韶关</span>
                        </li>

                        <li data-val="210100" >
                            <span>沈阳</span>
                        </li>

                    </div>



                    <div class="letter_div">
                        <div class="letter">W-Z</div>

                        <li data-val="810000" >
                            <span>香港</span>
                        </li>

                        <li data-val="330300" >
                            <span>温州</span>
                        </li>

                        <li data-val="320200" >
                            <span>无锡</span>
                        </li>

                        <li data-val="350200" >
                            <span>厦门</span>
                        </li>

                        <li data-val="410100" >
                            <span>郑州</span>
                        </li>

                        <li data-val="440400" >
                            <span>珠海</span>
                        </li>

                    </div>


                </ul>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="footer-div">
            <div class="footer-info">
                <p><span>友情链接:</span>
                    <a href="https://www.xiaobaishixi.com/" target="_blank">小白实习</a>
                    <a href="https://www.51tuijian.com/" target="_blank">51推荐</a>
                    <a href="http://www.vastsea.com/" target="_blank">大瀚人力资源</a>
                    <a href="/service" target="_blank">小白实习服务条款</a>
                    <a href="/helpCenter" target="_blank">帮助中心</a>
                </p>
                <p><span>我们:</span>
                    <a href="/about" target="_blank">关于我们</a>
                    <span>客服邮箱:service@xiaobaishixi.com&nbsp;&nbsp;&nbsp;&nbsp;business@xiaobaishixi.com</span>
                </p>
                <p>
                    <span><a style="color:#999" target="_blank" href="http://www.miitbeian.gov.cn">蜀ICP备18005916号-4</a></span>
                    <span>©2019 小白实习</span>
                    <a href="https://webscan.360.cn/index/checkwebsite/url/www.xiaobaishixi.com"
                       style="border:0;margin-right:0;width: 70px;display: inline-block;">
                        <img border="0" style="display: inline-block;width: 100%;vertical-align: middle;" src="//webscan.360.cn/status/pai/hash/d54913cbd3891f83a0c7d76f9e850459"/></a>
                    <a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51019002001900" style="text-decoration: none">
                        <img src="https://xbimg.xiaobaishixi.com/static/img/filing.png?v=d0289dc0a46fc5b15b3363ffa78cf6c7">
                        <span>川公网安备 51019002001900号</span>
                    </a>
                </p>
            </div>
            <div class="footer-code">
                <div>
                    <p><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/wx-logo.png?v=17f2cad9c8ded30043ae2954435d8e6e" alt=""><span>微信公众号</span></p>
                    <img src="https://xbimg.xiaobaishixi.com/static/nmain/img/wx-code.png?v=87c947309f6a8c4fc4447d21ca6b9fe9"/>
                </div>
                <div>
                    <p><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/weibo-logo.png?v=494c6e1f2966589e10bd1fb24df3319c" alt=""><span>官方微博</span></p>
                    <img src="https://xbimg.xiaobaishixi.com/static/nmain/img/weibo-code.png?v=12ef3564f6a2620dd76ce0a49e3d486e"/>
                </div>
            </div>
        </div>
    </div>
</div>
<!--反馈，回头部等-->
<div id="mina_qr">
    <div class="img-show"><img src="https://xbimg.xiaobaishixi.com/static/img/mina_qr.jpg?v=067d1f35b06d85b35b3625d1c8a4e701" alt=""></div>
    <span>小程序</span>
</div>
<div id="feedback">
    <span>用户反馈</span>
</div>
<div id="back_top">
    <span>返回顶部</span>
</div>
<div id="feedback-box" style="display: none;">
    <form id="advice-form" class="feedback-floor" onsubmit="return addAdvice()">
        <div class="feedback-box fixed" style="display: block;">
            <div class="feedback-title">给我们留言</div>
            <span class="feedback-close" onclick="feedclose()"></span>
            <div class="feedback-textare">
                <textarea id="textare" name="content" placeholder="你在使用小白实习的过程中有什么疑问或建议,告诉我们吧!(限200字内)" class="textarea-feedback"></textarea>
            </div>
            <div class="feedback-upload">
                <div class="upload-img">
                    <span><img src="https://xbimg.xiaobaishixi.com/static/nmain\img\upload_logo.png" alt="上传图片">添加图片</span>
                    <input type="file" name="adviceimg" id="upload-advice">
                </div>
                <div class="upload-right">（选填）可上传3个文件，每个文件大小不超过2M。格式必须为jpg，png和jpeg</div>
            </div>
            <div class="add-img" style="display:block"></div>
            <input class="feedback-input" type="text" placeholder="请留下邮箱方便我们为您解决问题" name="email">
            <button class="feedback-send" id="feedback-send" disabled="disabled">发&nbsp;送</button>
            <span id="feed-error"></span>
        </div>
    </form>
</div>
<script>
    var login_sdtoken = "vIkNac4q4lJ9ShhuX32BGJFKRjyyK77T";
</script>
<script>

    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?ea2fad5faae27be510a32fa67d2e782d";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();


    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();


    (function (b, a, e, h, f, c, g, s) {
        b[h] = b[h] || function () {
            (b[h].c = b[h].c || []).push(arguments)
        };
        b[h].s = !!c;
        g = a.getElementsByTagName(e)[0];
        s = a.createElement(e);
        s.src = "//s.union.360.cn/" + f + ".js";
        s.defer = !0;
        s.async = !0;
        g.parentNode.insertBefore(s, g)
    })(window, document, "script", "_qha", 267208, false);

</script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/form/form.js?v=ed1a03ddb5d592ef6eabd53684be03d6"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/layer/layer.js?v=91b08e09ce3849b9f5f894670d83e9a9"></script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/main_base.js?v=269de1a0535ff26b21cec2d24dbc329b"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/jq.toast.js?v=75acd72cdf8849053ce4c1228c086b3b"></script>

<script>

    var loc_city = '全国'

</script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/search-list2.js?v=cf27eaf8fe02cc2977802789b214f0aa"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/city.js"></script> --%>
</body>
</html>