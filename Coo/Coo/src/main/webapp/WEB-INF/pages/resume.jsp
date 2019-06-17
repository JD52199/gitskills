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

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的简历</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="Robots" content="all">
    <meta name="applicable" concent="pc">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/style.css?v=c765fd25d13a7df4f2ae81e2232a3f0b"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/n_base.css?v=cd01560d69373b9cb4b8c06e045303ea"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/register_index.css?v=986caf6accfd2f74ab2429c87a5ede5b"/>
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

    <link rel="stylesheet" href=https://xbimg.xiaobaishixi.com/static/css/resume_manage_chinese2.css?v=35b3d6fbd08916cdc7cf5c635cd256ac>
    <link rel="stylesheet" href=https://xbimg.xiaobaishixi.com/static/css/jquery.datetimepicker.css?v=22baa8aa2e0e17c6f0aacea433dc4737/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/croppic.css?v=87c5f0e5b27b6951bfea5809e09bd705"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/webuploader.css?v=bd38aeb0b7e171b2a9750506dea79aa4"/>
    <style>
        .preview .major-type span:not(:last-child):after {
            content: '/'
        }
        /* 选择器样式部分 */
        .jq-selector {
            display: none;
            position: absolute;
            overflow-x: hidden;
            background-color: #fff;
            padding: 10px;
            -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, .3);
            -moz-box-shadow: 0 0 5px rgba(0, 0, 0, .3);
            box-shadow: 0 0 5px rgba(0, 0, 0, .3);
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            z-index: 2;
        }
        .jq-selector .selector-child {
            padding-left: 190px !important;
        }
        .jq-selector .selector-child li {
            cursor: pointer;
            border-radius: 4px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            padding: 2px 8px !important;
            margin: 0 8px 8px 0 !important;
        }
        .selector-parent {
            cursor: pointer;
        }
        .jq-selector .selector-child li:hover {
            background-color: #ffd000;
            color: #333;
        }
        .jq-selector > div {
            margin-top: 20px;
        }
        .search-key, .clear-key, .entering {
            border-radius: 4px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            cursor: pointer;
            background-color: #ffd000;
            display: inline-block;
            margin-left: 12px;
            padding: 2px 15px;
            color: #333;
        }
        .jq-selector input {
            border: 1px solid #eaeaea;
            line-height: 26px;
            padding-left: 5px;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
        }
        .jq-selector > div {
            position: relative;
            height: 200px;
        }
        .jq-selector .selector-parent {
            width: 180px;
            position: absolute;
            height: 100%;
            overflow-y: auto;
        }
        .major-opr p {
            display: inline-block;
            margin-right: 15px;
        }
        .school-selector-parent li {
        }
        .jq-selector .selector-parent li.active {
            background-color: #eee;
        }
        .jq-selector .selector-child {
            padding-left: 180px;
            height: 100%;
            overflow-y: auto;
        }
        /* jq-selector 禁止选中 */
        input[data-selector] {
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            cursor: pointer;
        }
        .jq-selector .selector-child li {
            display: inline-block;
            padding: 6px;
            margin: 0 6px 6px 0;
            background-color: #eee;
        }
        .webuploader-pick {
            width: 100%;
            height: 100%;
            padding: 0;
            background-color: transparent;
        }
        #attachPicker>div {
            width: 100% !important;
            height: 100% !important;
        }
        #WU_FILE_0 {
            text-align: center;
            margin-top: 60px;
        }
        .progress .progress-bar {
            background: #6aa2e4;
            height: 18px;
        }
        #croppic, #cropContainerHeaderButton {
            width: 106px;
            height: 106px;
            position: absolute;
            margin: 0;
            left: 0;
            top: 0;
            padding: 0;
        }
        #croppic {
            top: -30px;
            z-index: 3;
        }
        #cropContainerHeaderButton {
            bottom: 2px;
            z-index: 4;
            cursor: pointer;
        }
        .cropControls {
            width: 106px;
            top: 120px;
        }
        .cropControls i {
            font-size: 12px;
        }

        .mask{
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,.4);
            z-index: 99;
        }
        .mask .mask_model{
            width: 418px;
            height: 340px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -209px;
            margin-top: -170px;
        }
        .mask .mask_model .closePic{
            position: absolute;
            right: 10%;
            top:30px;
            cursor: pointer;
        }
    </style>



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

            <h1>个人简历</h1>


            <ul class="nav">

                <li>
                    <a  href="${pageContext.request.contextPath}/">首页</a>
                </li>
                <li>
                    <a  href="/jobs/c-100000_?k=&p=1">企业招聘</a>
                </li>
                <li>
                    <a  href="/recruit/search">校园招聘</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/preach/search">个人中心</a>
                </li>
                <li style="padding-right: 0"><a  href="/article/station?category=new" style="display: inline-block">论坛</a><img src="https://xbimg.xiaobaishixi.com/static/img/new_xbs.png?v=3f0aeac1458a45545b7c62bc00329335" class="new_xbs"/></li>
            </ul>

            <div class="logined">
                <a  href="/personnel/messages" >
                    <div class="msg_box">
                        <img src="https://xbimg.xiaobaishixi.com/static/nmain/img/msg_icon.png?v=f54bf38e1379b6cffb91e548704f0806" alt="">

                    </div>
                </a>

                <div class="mine" style="background-image: url(https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png)"></div>

                <div class="mine_box">
                    <div class="mine_jump">

                        <a href="/my" rel="nofollow">个人中心</a>

                        <a href="/usr/accountsetting/mod">账号设置<span class="onlysso"></span></a>

                        <a id="logout-btn">退出</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="sub-header">


        </div>
    </div>

    <div class="wrap1 clearfix">
        <div class="wrap1-l">
            <div class="nav">
                <div class="resume-name">
                    <div class="name">
                        <p class="name-text" id="gdata" data-guuid="ZVVRHSLOZS9F6IP2CR14FJBJQC2NIGRP" data-ruuid="VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES" data-stype="online">默认简历</p>
                        <span class="revise"></span>
                    </div>
                    <div class="rename" style="display: none;">
                        <input class="input" type="text">
                        <span class="confirm">保存</span>
                    </div>
                </div>
                <div class="operation">
                    <a class="preview"  data-pre="1"  data-href="/personnel/resume/view/VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES"  target="_blank">预览</a> <span >|</span> <a class="download"

                                                                                                                                                                     data-att="1" data-href="/personnel/resume/download/VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES/chinese"

                >下载</a>
                </div>
            </div>
            <div class="main">
                <div class="module-item basic-info">
                    <div class="module-name clearfix bg_icon1"><b>基本信息</b><div class="edit_btn" >编辑</div></div>
                    <div class="preview" >
                        <div class="head">
                            <img src="https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png"/>
                        </div>
                        <div class="content">
                            <p class="name">${user.vUserName}</p>
                            <p id="info"><span class="gender">${user.sex}</span> | <span class="birthday">${user.birthday}</span> | <span
                                    class="nation">${user.country}</span> | <span class="city">${user.bcity}</span></p>
                            <p id="tel"><span class="phone">${user.telep}</span> | <span class="email">${user.email}</span></p>
                            <p style="display:none;"><span class="desc"></span></p>
                        </div>
                    </div>
                    <div class="edit" style="display: none;">
                        <div class="head-box">
                            <div class="head">
                                <div id="croppic"></div>
                                <span class="btn" id="cropContainerHeaderButton"></span>
                                <img id="img_upload" src="https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png"/>
                                <div class="cover-box" id="resumePicpicker" title="点击上传照片"></div>
                            </div>
                            <p class="tips">建议上传77*88的一寸相片，文件大小2M以内</p>
                        </div>
                        <div class="content-box">
                            <form class="content" name="basic-info" id="basic-info1">
                                <div class="name">
                                    <span>姓名</span>
                                    <input type="text" name="name" maxlength="15" value="${user.vUserName}">
                                </div>
                                <div class="gender">
                                    <span>性别</span>
                                    <div class="sel-box">
                                        <select name="gender">
                                            <option value="">请选择</option>
                                            <option>男</option>
                                            <option>女</option>
                                            <option>保密</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="birthday">
                                    <span>生日</span>
                                    <div class="sel-box">
                                        <select name="birthday-n">

                                            <option value="1985">1985</option>

                                            <option value="1986">1986</option>

                                            <option value="1987">1987</option>

                                            <option value="1988">1988</option>

                                            <option value="1989">1989</option>

                                            <option value="1990">1990</option>

                                            <option value="1991">1991</option>

                                            <option value="1992">1992</option>

                                            <option value="1993">1993</option>

                                            <option value="1994">1994</option>

                                            <option value="1995">1995</option>

                                            <option value="1996">1996</option>

                                            <option value="1997">1997</option>

                                            <option value="1998">1998</option>

                                            <option value="1999">1999</option>

                                            <option value="2000">2000</option>

                                            <option value="2001">2001</option>

                                            <option value="2002">2002</option>

                                            <option value="2003">2003</option>

                                            <option value="2004">2004</option>

                                            <option value="2005">2005</option>

                                            <option value="2006">2006</option>

                                            <option value="2007">2007</option>

                                            <option value="2008">2008</option>

                                            <option value="2009">2009</option>

                                            <option value="2010">2010</option>

                                            <option value="2011">2011</option>

                                            <option value="2012">2012</option>

                                            <option value="2013">2013</option>

                                            <option value="2014">2014</option>

                                            <option value="2015">2015</option>

                                            <option value="2016">2016</option>

                                            <option value="2017">2017</option>

                                            <option value="2018">2018</option>

                                            <option value="2019">2019</option>

                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                    <div class="sel-box">
                                        <select name="birthday-y">
                                            <option value="">请选择</option>
                                            <option>01</option>
                                            <option>02</option>
                                            <option>03</option>
                                            <option>04</option>
                                            <option>05</option>
                                            <option>06</option>
                                            <option>07</option>
                                            <option>08</option>
                                            <option>09</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nation">
                                    <span>国家</span>

                                    <div class="sel-box">
                                        <select name="nation">
                                            <option value="">请选择</option>

                                            <option>中国</option>

                                            <option>丹麦</option>

                                            <option>乌克兰</option>

                                            <option>俄罗斯</option>

                                            <option>加拿大</option>

                                            <option>匈牙利</option>

                                            <option>南非</option>

                                            <option>印度</option>

                                            <option>奥地利</option>

                                            <option>巴西</option>

                                            <option>德国</option>

                                            <option>意大利</option>

                                            <option>挪威</option>

                                            <option>新加坡</option>

                                            <option>新西兰</option>

                                            <option>日本</option>

                                            <option>比利时</option>

                                            <option>法国</option>

                                            <option>波兰</option>

                                            <option>泰国</option>

                                            <option>澳大利亚</option>

                                            <option>爱尔兰</option>

                                            <option>瑞典</option>

                                            <option>瑞士</option>

                                            <option>白俄罗斯</option>

                                            <option>美国</option>

                                            <option>芬兰</option>

                                            <option>英国</option>

                                            <option>荷兰</option>

                                            <option>菲律宾</option>

                                            <option>西班牙</option>

                                            <option>阿根廷</option>

                                            <option>韩国</option>

                                            <option>马来西亚</option>

                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>

                                </div>
                                <div class="city">
                                    <span>所在城市</span>

                                    <input type="text" name="city" data-selector="city" readonly maxlength="20">

                                </div>
                                <div class="phone">
                                    <span>手机号码</span>
                                    <input type="text" name="phone" value="15002344940"></div>
                                <div class="email">
                                    <span>常用邮箱</span>
                                    <input type="text" name="email" value="" maxlength="32">
                                </div>
                                <input id="headpic" name="headpic" value="F550B44393EEB54724C71AF5E552614C" type="hidden">
                            </form>
                        </div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel" >取消</div>
                        </div>
                    </div>
                </div>

                <div class="module-item expect-practice">
                    <div class="module-name clearfix bg_icon2"><b>期望实习</b><div class="edit_btn">编辑</div></div>
                    <div class="preview" >
                        <div class="content clearfix">
                            <p class="post"><b><i>期望职位</i>：</b><span>${ext.job}</span></p>
                            <p class="area"><b><i>期望地点</i>：</b><span>${ext.cty}</span></p>
                            <p class="day"><b><i>期望天数</i>：</b><span>${ext.day}天</span></p>
                            <p class="time"><b><i>实习月份</i>：</b><span>${ext.start_time}</span>-<span>${ext.end_time}</span></p>
                            <p class="salary"><b><i>期望日薪</i>：</b><span>¥<span>${ext.sly}</span>天</span></p>
                            <p class="go-time"><b><i>到岗日期</i>：</b><span>${ext.go_time}</span></p>
                        </div>
                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="expect-practice" id="expect-practice1">
                                <div class="post post-select">
                                    <span>期望职位</span>
                                    <input type="text" name="post" maxlength="18">
                                    <!-- <div class="add-post">添加</div> -->
                                </div>
                                <div class="area">
                                    <span>期望地点</span>
                                    <input type="text" name="area" data-selector="city" readonly>
                                    <!-- <div class="add-area">添加</div> -->
                                </div>
                                <div class="day">
                                    <span>期望天数</span>
                                    <div class="sel-box">
                                        <select class="day-btn" name="day">
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option selected>5</option>
                                            <option>6</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="time">
                                    <span>实习月份</span>
                                    <input type="text" name="time-start" class="datetimepicker">
                                    <div class="start">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-start-n">
                                                <option></option>
                                                <option></option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-start-y">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <i>至</i>
                                    <input type="text" name="time-end" class="datetimepicker">
                                    <div class="end">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-end-n">
                                                <option></option>
                                                <option></option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-end-y">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="salary">
                                    <span>期望日薪</span>
                                    <input type="text" name="salary" value="100" placeholder="只能填写数字，如200" maxlength="4">
                                </div>
                                <div class="go-time">
                                    <span>到岗日期</span>
                                    <input type="text" name="go-time" class="datetimepicker" readonly>
                                </div>
                            </form>
                        </div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>

                <div class="module-item edu-bg">
                    <!-- <div class="module-name clearfix bg_icon3"><b>教育背景</b><div class="edit_btn">编辑</div></div>
                    <div class="preview" >

                        <div class="content clearfix">
                            <p class="school"><b><i>学校</i>：</b><span>重庆科技学院</span>
                            </p>
                            <p class="school-time"><b><i>在校时间</i>：</b><span>2019</span>-<span>2027</span></p>
                            <p class="education"><b><i>学历</i>：</b><span>本科</span></p>

                            <p class="major-type"><b><i>专业类别</i>：</b><span>工学</span><span>计算机科学与技术类</span><span>软件工程</span></p>

                            <p class="major"><b><i>专业</i>：</b><span>软件工程</span></p>
                            <p class="score" ><b><i>成绩排名</i>：</b><span>前10%</span></p>
                            <p class="course" ><b><i>主修课程</i>：</b><span>java
</span>
                            </p>
                            <p class="honor" ><b><i>荣誉奖励</i>：</b><span>无</span></p>
                        </div>

                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="edu-bg" id="edu-bg1">
                                <div class="school">
                                    <span>学校</span>

                                    <input type="text" name="school" data-selector="school"
                                           placeholder="如未检索到学校时，【输入学校】框中输入学校，点击【录入】即可" readonly maxlength="15">

                                    <div class="isabroad"><b><img src=https://xbimg.xiaobaishixi.com/static/img/resume2/gou.svg?v=ee0376a2c373833dec7c2b44b9e9d5fb></b>我是海外留学生</div>
                                </div>
                                <div class="school-time">
                                    <span>在校时间</span>
                                    <input type="text" name="time-start" class="datetimepicker">
                                    <div class="sel-box">
                                        <select name="school-time-start"></select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                    <i>至</i>
                                    <input type="text" name="time-end" class="datetimepicker">
                                    <div class="sel-box">
                                        <select name="school-time-end"></select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="education">
                                    <span>学历</span>
                                    <div class="sel-box">
                                        <select name="education">
                                            <option>大专</option>
                                            <option>本科</option>
                                            <option>硕士</option>
                                            <option>博士</option>
                                            <option>其他</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="major-type">
                                    <span>专业类别</span>
                                    <div class="sel-box sel-box1">
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                    <div class="sel-box sel-box2">
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                    <div class="sel-box sel-box3">
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="major">
                                    <span>专业</span>
                                    <input type="text" name="major" maxlength="15">
                                </div>
                                <div class="score">
                                    <span>成绩排名</span>

                                    <div class="sel-box">
                                        <select name="score">
                                            <option>请选择</option>
                                            <option>前10%</option>
                                            <option>前30%</option>
                                            <option>中等</option>
                                            <option>中下</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>

                                </div>
                                <div class="course">
                                    <span>主修课程</span>
                                    <textarea wrap1="virtual" maxlength="256" name="course"></textarea>
                                </div>
                                <div class="honor">
                                    <span>荣誉奖励</span>
                                    <textarea wrap1="virtual" maxlength="512" name="honor"></textarea>
                                </div>
                            </form>
                            <div class="delete" style="display: none;">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>

                <div class="module-item practice-ex" style="display: none" >
                    <div class="module-name clearfix bg_icon4"><b>实习经历</b>
                        <div class="edit_btn">编辑</div>
                    </div>
                    <div class="preview" style="display: none">

                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="practice-ex" id="practice-ex1">
                                <div class="company">
                                    <span>公司名称</span>
                                    <input type="text" name="company" maxlength="20">
                                </div>
                                <div class="position">
                                    <span>职位名称</span>
                                    <input type="text" name="position" maxlength="15">
                                </div>
                                <div class="time">
                                    <span>实习时间</span>
                                    <input type="text" name="time-start" class="datetimepicker">
                                    <div class="start">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-start-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-start-y">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <i>至</i>
                                    <input type="text" name="time-end" class="datetimepicker">
                                    <div class="end">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-end-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-end-y">
                                                <option>至今</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="place">
                                    <span>实习地点</span>

                                    <input type="text" name="place" data-selector="city" readonly>

                                </div>
                                <div class="duty">
                                    <span>工作职责</span>
                                    <textarea wrap1="virtual" name="duty" maxlength="350"></textarea>
                                </div>
                            </form>
                            <div class="delete">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>

                        <div class="demo-box">
                            <div class="see-demo">查看示例</div>
                            <div class="demo-con">
                                <p>示例1:<br>
                                    2015.3-2015.8 xx会计师事务所 审计助理<br>
                                    协助财务主管核算成本及收入，编制月度预算报表；<br>
                                    处理现金，应收账款，应付账款，总账，财务报表等1000+份原始单据；<br>
                                    使用会计软件完成268笔交易的会计实录。
                                </p>
                                <p>
                                    示例2:<br>
                                    2010.06-2011.08 xx公司 行政文员<br>
                                    协助行政部经理完成公司行政事务工作及部门内部日常事务工作；<br>
                                    协助行政部经理进行内务、安全管理，为其他部门提供及时有效的行政服务；<br>
                                    完成材料收集、档案管理、文书起草、公文制定、文件收发等工作；<br>
                                    获得“优秀员工称号”，连续2个月实习生考评分数第一。
                                </p>
                            </div>
                        </div>

                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div> -->
                </div>
                <div class="module-item academic-ex" style="display: none" >
                    <div class="module-name clearfix bg_icon5"><b>学术经历</b>
                        <div class="edit_btn">编辑</div>
                    </div>
                    <div class="preview"  style="display: none">

                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="academic-ex" id="academic-ex1">
                                <div class="name">
                                    <span>项目名称</span>
                                    <input type="text" name="name" maxlength="50">
                                </div>
                                <div class="position">
                                    <span>担任职务</span>
                                    <input type="text" name="position" maxlength="25">
                                </div>
                                <div class="time">
                                    <span>项目时间</span>
                                    <!--<input type="text" name="time-start" class="datetimepicker">-->
                                    <div class="start">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-start-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-start-y">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <i>至</i>
                                    <!--<input type="text" name="time-end" class="datetimepicker">-->
                                    <div class="end">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-end-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-end-y">
                                                <option>至今</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="place">
                                    <span>项目地点</span>

                                    <input type="text" name="place" data-selector="city" readonly>

                                </div>
                                <div class="des">
                                    <span>项目描述</span>
                                    <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
                                </div>
                            </form>
                            <div class="delete">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>

                        <div class="demo-box">
                            <div class="see-demo">查看示例</div>
                            <div class="demo-con">
                                <p>示例1:<br>
                                    2012.2-8 抗衰老化妆品成分对人体成纤维细胞生长的影响效果 项目助理<br>
                                    对样品进行无菌处理以及相应检测浓度的调配<br>
                                    提供检测用细胞以及细胞培养<br>
                                    对样品进行辩解浓度的检测<br>
                                    细胞生长情况与样品浓度依赖关系的检测
                                </p>
                                <p>
                                    示例2:<br>
                                    2014.3-2014.6 二级斜齿圆柱齿轮减速器的设计<br>
                                    根据给定的要求设计一个二级斜齿圆柱齿轮减速器<br>
                                    选择合适的电动机类型、容量、转速，分配各个传动轴的传动比<br>
                                    确定各轴的转速、输入功率、输入转矩，合理设计V带<br>
                                    根据轮齿弯曲强度校核齿轮，选定通气孔、定位销、起盖螺钉等零件<br>
                                    选择润滑方式和密封方式，制定出设计说明书绘画结构设计图和零件图
                                </p>
                            </div>
                        </div>

                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>
                <div class="module-item school-ex" style="display: none" >
                    <div class="module-name clearfix bg_icon6"><b>校园经历</b>
                        <div class="edit_btn">编辑</div>
                    </div>
                    <div class="preview" style="display: none">

                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="school-ex" id="school-ex1">
                                <div class="name">
                                    <span>活动名称</span>
                                    <input type="text" name="name" maxlength="50">
                                </div>
                                <div class="position">
                                    <span>担任职务</span>
                                    <input type="text" name="position" maxlength="25">
                                </div>
                                <div class="time">
                                    <span>活动时间</span>
                                    <div class="start">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-start-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-start-y">
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <i>至</i>
                                    <div class="end">
                                        <div class="sel-box">
                                            <select class="t-sel1" name="time-end-n"></select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                        <div class="sel-box">
                                            <select class="t-sel2" name="time-end-y">
                                                <option>至今</option>
                                                <option>01</option>
                                                <option>02</option>
                                                <option>03</option>
                                                <option>04</option>
                                                <option>05</option>
                                                <option>06</option>
                                                <option>07</option>
                                                <option>08</option>
                                                <option>09</option>
                                                <option>10</option>
                                                <option>11</option>
                                                <option>12</option>
                                            </select>
                                            <div class="arrow-box">
                                                <div class="arrow"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="place">
                                    <span>活动地点</span>

                                    <input type="text" name="place" data-selector="city" readonly>

                                </div>
                                <div class="des">
                                    <span>活动描述</span>
                                    <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
                                </div>
                            </form>
                            <div class="delete">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>

                        <div class="demo-box">
                            <div class="see-demo">查看示例</div>
                            <div class="demo-con">
                                <p>示例1:<br>
                                    学校论坛 xx版版主<br>
                                    根据版规进行版面维护，维持板块正常的秩序；<br>
                                    搜集网络上近期热点话题，发帖引导用户讨论，提高板块活跃度，将论坛活跃度排名由15名提升至第3名；<br>
                                    任职期间成功举办2次板块线下聚会，促进板块用户的相互了解沟通，将板块活跃用户增加了130%。
                                </p>
                                <p>示例2:<br>
                                    xx大学 XX精英俱乐部 副主席<br>
                                    负责俱乐部各项活动经费的汇总整理，负责制作年度财务报告<br>
                                    协助俱乐部主席开展日常工作，撰写俱乐部年度工作计划<br>
                                    XX大学系列培训项目组骨干，协助公司圆满组织两场培训，一百余名同学参加了培训
                                </p>
                            </div>
                        </div>

                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>
                <div class="module-item skill-hobby" style="display: none">
                    <div class="module-name clearfix bg_icon7"><b>技能爱好</b><div class="edit_btn">编辑</div></div>
                    <div class="preview" style="display: none">
                        <div class="content clearfix">

                        </div>
                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="skill-hobby" id="skill-hobby1">
                                <div class="type">
                                    <span>类型</span>
                                    <div class="sel-box">
                                        <select name="type">
                                            <option>专业技能</option>
                                            <option>语言水平</option>
                                            <option>兴趣爱好</option>
                                            <option>其他</option>
                                        </select>
                                        <div class="arrow-box">
                                            <div class="arrow"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="des">
                                    <span>说明</span>
                                    <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
                                </div>
                                <div class="language-box" style="display: none;">
                                    <div class="add-language">添加一门语言</div>
                                </div>
                            </form>
                            <div class="delete" style="display: none">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>
                <div class="module-item opus" style="display: none">
                    <div class="module-name clearfix bg_icon8"><b>作品展示</b><div class="edit_btn">编辑</div></div>
                    <div class="preview" style="display: none">

                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="opus1" id="opus1">
                                <div class="link">
                                    <span>作品链接</span>
                                    <input type="text" name="link" maxlength="512" placeholder="例如https://www.xiaobaishixi.com" >
                                </div>
                                <div class="des">
                                    <span>文字说明</span>
                                    <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
                                </div>
                            </form>
                            <div class="delete">删除该条</div>
                        </div>
                        <div class="add">增加一条</div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>
                <div class="module-item personal-ev" style="display: none">
                    <div class="module-name clearfix bg_icon9"><b>个人评价</b><div class="edit_btn">编辑</div></div>
                    <div class="preview" style="display: none">
                        <div class="content">
                            <p></p>
                        </div>
                    </div>
                    <div class="edit" style="display: none;">
                        <div class="content-box">
                            <form class="content" name="personal-ev" id="personal-ev1">
                                <div>
                                    <span></span>
                                    <textarea wrap1="virtual" name="des" maxlength="650"></textarea>
                                </div>
                            </form>
                            <div class="delete">删除该条</div>
                        </div>
                        <div class="btn-box">
                            <div class="confirm">保存</div>
                            <div class="cancel">取消</div>
                        </div>
                    </div>
                </div>
                <div class="module-item attachment" style="display: none">
                    <div class="module-name clearfix bg_icon10"><b>相关附件</b></div>
                    <div class="preview">
                        <div class="content">
                            <ul class="list">

                            </ul>
                            <div class="tips">(支持格式：.jpg,.png,.jpeg,.pdf,.doc,.docx,.txt ;大小不超过5M)</div>
                            <!--<div class="upload-btn">继续上传</div>-->
                            <div class="upload-btn" id="attachPicker" >上传附件</div>
                        </div>
                    </div>
                </div>
                <!--附件简历-->

            </div>
        </div>
        <div class="wrap1-r">
            <div class="integrity">
                <div class="text">简历完善度：<span class="value">75%</span><span class="state">（可投递）</span></div>
                <div class="line" style="width:150.0px"></div>
            </div>
            <div class="module-nav">
                <div class="module">
                    <ul class="module-list">
                        <li class="module1">
                            <span class="icon icon1"></span>
                            <p class="name">基本信息<span>必填</span></p>
                            <div class="line"></div>
                            <div class="complete" style="display: block;"></div>
                        </li>

                        <li class="module2">
                            <span class="icon icon2"></span>
                            <p class="name">期望实习<span>必填</span></p>
                            <div class="line"></div>
                            <div class="complete" style="display: block;"></div>
                        </li>

                        <li class="module3">
                            <span class="icon icon3"></span>
                            <p class="name">教育背景<span>必填</span></p>
                            <div class="line"></div>
                            <div class="complete" style="display: block;"></div>
                        </li>

                        <li class="module4">
                            <span class="icon icon4"></span>
                            <p class="name">实习经历</p>
                            <div class="line"></div>
                            <div class="complete" ></div>
                        </li>
                        

                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div class="post-box">
        <ul class="post-list">


            <li class="list">
                <span class="type">IT互联网</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>软件</span>
                        <ul class="post-list2">

                            <li class="list2">测试</li>

                            <li class="list2">Java</li>

                            <li class="list2">IOS</li>

                            <li class="list2">数据库</li>

                            <li class="list2">C/C++</li>

                            <li class="list2">C#/.NET</li>

                            <li class="list2">Hadoop</li>

                            <li class="list2">Android</li>

                            <li class="list2">算法</li>

                            <li class="list2">IT运维</li>

                            <li class="list2">Python</li>

                            <li class="list2">云计算/大数据</li>

                            <li class="list2">Node.js</li>

                            <li class="list2">数据挖掘</li>

                            <li class="list2">PHP</li>

                            <li class="list2">Ruby/Perl</li>

                            <li class="list2">前端</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>运营</span>
                        <ul class="post-list2">

                            <li class="list2">新媒体</li>

                            <li class="list2">内容运营</li>

                            <li class="list2">编辑</li>

                            <li class="list2">SEO</li>

                            <li class="list2">产品运营</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>硬件</span>
                        <ul class="post-list2">

                            <li class="list2">嵌入式</li>

                            <li class="list2">集成电路</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>设计</span>
                        <ul class="post-list2">

                            <li class="list2">Flash</li>

                            <li class="list2">UI/UE</li>

                            <li class="list2">特效</li>

                            <li class="list2">网页/美工</li>

                            <li class="list2">2D/3D</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>通信</span>
                        <ul class="post-list2">

                            <li class="list2">物联网</li>

                            <li class="list2">射频</li>

                            <li class="list2">通信</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>产品</span>
                        <ul class="post-list2">

                            <li class="list2">用户研究</li>

                            <li class="list2">产品助理</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">市场商务</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>商务</span>
                        <ul class="post-list2">

                            <li class="list2">商务</li>

                            <li class="list2">招投标</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>销售</span>
                        <ul class="post-list2">

                            <li class="list2">推广</li>

                            <li class="list2">销售</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>公关</span>
                        <ul class="post-list2">

                            <li class="list2">媒介</li>

                            <li class="list2">公关</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>客服</span>
                        <ul class="post-list2">

                            <li class="list2">客户服务</li>

                            <li class="list2">销售支持</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>市场</span>
                        <ul class="post-list2">

                            <li class="list2">品牌</li>

                            <li class="list2">市场</li>

                            <li class="list2">渠道</li>

                            <li class="list2">分析/调研</li>

                            <li class="list2">策划</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">电子电气</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>电子</span>
                        <ul class="post-list2">

                            <li class="list2">光电</li>

                            <li class="list2">半导体/芯片</li>

                            <li class="list2">电子工程</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>电气</span>
                        <ul class="post-list2">

                            <li class="list2">电气设计</li>

                            <li class="list2">电气工程</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">人事行政</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>人力资源</span>
                        <ul class="post-list2">

                            <li class="list2">企业文化</li>

                            <li class="list2">人事/HR</li>

                            <li class="list2">招聘</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>猎头</span>
                        <ul class="post-list2">

                            <li class="list2">猎头</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>行政</span>
                        <ul class="post-list2">

                            <li class="list2">前台</li>

                            <li class="list2">行政</li>

                            <li class="list2">助理</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">外语外贸</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>外语</span>
                        <ul class="post-list2">

                            <li class="list2">英语</li>

                            <li class="list2">日语</li>

                            <li class="list2">翻译</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>外贸</span>
                        <ul class="post-list2">

                            <li class="list2">报关员</li>

                            <li class="list2">外贸专员</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">财经法务</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>保险</span>
                        <ul class="post-list2">

                            <li class="list2">业务</li>

                            <li class="list2">保单</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>金融</span>
                        <ul class="post-list2">

                            <li class="list2">金融</li>

                            <li class="list2">基金</li>

                            <li class="list2">证券</li>

                            <li class="list2">风控</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>投资</span>
                        <ul class="post-list2">

                            <li class="list2">分析师</li>

                            <li class="list2">投资</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>法务</span>
                        <ul class="post-list2">

                            <li class="list2">合规</li>

                            <li class="list2">律师</li>

                            <li class="list2">法务</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>银行</span>
                        <ul class="post-list2">

                            <li class="list2">客户经理</li>

                            <li class="list2">部门经理</li>

                            <li class="list2">贷款</li>

                            <li class="list2">大堂经理</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>财会</span>
                        <ul class="post-list2">

                            <li class="list2">审计</li>

                            <li class="list2">税务</li>

                            <li class="list2">财务</li>

                            <li class="list2">会计/出纳</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">教育咨询</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>咨询</span>
                        <ul class="post-list2">

                            <li class="list2">咨询/顾问</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>教育</span>
                        <ul class="post-list2">

                            <li class="list2">教务</li>

                            <li class="list2">教师</li>

                            <li class="list2">幼教</li>

                            <li class="list2">培训</li>

                            <li class="list2">课程</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">媒体设计</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>广告</span>
                        <ul class="post-list2">

                            <li class="list2">创意</li>

                            <li class="list2">策划</li>

                            <li class="list2">AE</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>艺术</span>
                        <ul class="post-list2">

                            <li class="list2">演艺</li>

                            <li class="list2">摄影</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>编辑</span>
                        <ul class="post-list2">

                            <li class="list2">编辑/采编</li>

                            <li class="list2">校对/排版</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>设计</span>
                        <ul class="post-list2">

                            <li class="list2">美术设计</li>

                            <li class="list2">平面设计</li>

                            <li class="list2">工业设计</li>

                            <li class="list2">视觉设计</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>媒体</span>
                        <ul class="post-list2">

                            <li class="list2">记者</li>

                            <li class="list2">编导</li>

                            <li class="list2">主持/播音</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">机械制造</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>机械</span>
                        <ul class="post-list2">

                            <li class="list2">机械设计</li>

                            <li class="list2">设备</li>

                            <li class="list2">生产</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>制造</span>
                        <ul class="post-list2">

                            <li class="list2">自动化</li>

                            <li class="list2">质量</li>

                            <li class="list2">安全</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">建筑房产</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>建筑</span>
                        <ul class="post-list2">

                            <li class="list2">建筑</li>

                            <li class="list2">土木</li>

                            <li class="list2">园林</li>

                            <li class="list2">城规/市政</li>

                            <li class="list2">工程造价</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>房产</span>
                        <ul class="post-list2">

                            <li class="list2">给排水</li>

                            <li class="list2">地产开发/策划</li>

                            <li class="list2">房产销售</li>

                            <li class="list2">物业管理</li>

                        </ul>
                    </li>

                </ul>
            </li>


            <li class="list">
                <span class="type">其他类型</span>
                <ul class="post-list1">

                    <li class="list1">
                        <span>体育快消</span>
                        <ul class="post-list2">

                            <li class="list2">快消</li>

                            <li class="list2">体育</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>物流采购</span>
                        <ul class="post-list2">

                            <li class="list2">采购</li>

                            <li class="list2">供应链</li>

                            <li class="list2">物流</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>食品材料</span>
                        <ul class="post-list2">

                            <li class="list2">材料</li>

                            <li class="list2">食品</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>生物医疗</span>
                        <ul class="post-list2">

                            <li class="list2">医药</li>

                            <li class="list2">医生</li>

                            <li class="list2">生物</li>

                            <li class="list2">护理</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>能源环保</span>
                        <ul class="post-list2">

                            <li class="list2">矿产</li>

                            <li class="list2">能源</li>

                            <li class="list2">环保</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>NGO公益</span>
                        <ul class="post-list2">

                            <li class="list2">志愿者</li>

                        </ul>
                    </li>

                    <li class="list1">
                        <span>酒店旅游</span>
                        <ul class="post-list2">

                            <li class="list2">酒店管理</li>

                            <li class="list2">旅游</li>

                        </ul>
                    </li>

                </ul>
            </li>

        </ul>
    </div>
    <div class="cover" style="display: none;" ondragstart="return false;">
        <!--提示信息弹窗-->
        <div class="popup1" style="display: none;">
            <p class="tips"></p>
        </div>
        <!--简历名称提示弹窗&&关闭邀约弹窗-->
        <div class="popup2" style="display: none;">
            <p class="tips"></p>
            <div class="yes">确定</div>
            <div class="no">取消</div>
        </div>
        <!--删除最后一条提示弹窗-->
        <div class="popup6" style="display: none;">
            <p class="tips">确定删除最后一条吗？</p>
            <div class="yes6">确定</div>
            <div class="no6">取消</div>
        </div>
        <!--简历名称提示弹窗&&关闭邀约弹窗-->
        <div class="popup7" style="display: none;">
            <p class="tips">
                <span style="display: block;font-size: 18px;">温馨提示</span>
                <span style="display: block;text-align: center;font-size: 14px;">是否确认简历版本升级？<br>(升级后，“大学经历”和“技能简介”会被“校园经历”和“技能爱好”取代，你需要重新填写。)</span>
            </p>
            <div class="yes7">确定</div>
            <div class="no7">取消</div>
        </div>
    </div>
</div>

<script>
    var login_sdtoken = "jV9Fh7Xm2Q7Kn5RtM3DhGgrRqPfFZRuc";
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

    function closeMask() {
        $(".mask").hide()
    }
    var isFirstResume = false,
        languageType = 'chinese',
        userExpand = {"status": "normal", "subscription_max_num": 10, "deliver_max_num": 10, "honor_max_num": 10, "product_max_num": 10, "uuid": "SWFNRMUQMBAWSIDK1QWYPNVLL8FNNCAP", "project_max_num": 10, "edu_max_num": 10, "resume_max_num": 2, "attach_max_num": 2, "skill_max_num": 10, "deliver_num": null, "exp_max_num": 10, "resume_num": null, "user_uuid": "5R0G3SQJZQDQMT5SPD6A8JU5RKC3RUSR", "id": 382522, "subscription_num": null, "practise_max_num": 10},
        sdtoken = 'jV9Fh7Xm2Q7Kn5RtM3DhGgrRqPfFZRuc',
        resuuid = 'VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES',
        groupuuid = 'ZVVRHSLOZS9F6IP2CR14FJBJQC2NIGRP',
        stype = 'online',
        isdefault = true,
        atta_info = [],
        practice_info = [],
        product_info = [],
        skill_info = [],
        exp_info = [],
        project_info = [],
        description = {"judge": ""};
    baseinfo = true;
    expect_job = true;
    education = true;
</script>
<script src=https://xbimg.xiaobaishixi.com/static/js/ref/jquery-1.9.1.min.js?v=397754ba49e9e0cf4e7c190da78dda05></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/resume2/art-template.js?v=373f227a23b6f1354dac6b7df5587429></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/ref/autosize.min.js?v=5a992eb72bcf4ef1fa1d61b73b64e889></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/ref/jquery.datetimepicker.js?v=6e660303a25f412c43b9122a97f9cf85></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/resume2/jq.city-selector.js?v=ebf84a3eb8ff3effeb34c85baf99b6be></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/resume2/jq.school-selector.js?v=fbd2f71f00d7bb3119a3ec538cb39c53></script>
<script src=https://xbimg.xiaobaishixi.com/static/js/resume2/choose-tool.js?v=f6b119cf5789a5ef7c3969920b6ec0d4></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/upload.js?v=895a328e40df34c96bbe78eed58691dc"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/croppic.min.js?v=f88b27f1b65bdbd1ac51e7922cf2d66a"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/webuploader.js?v=bf448310ed783f8c2bc0474e5cc9825b"></script>
<script>
    var rule = template.defaults.rules[0];
   <%--  rule.test = new RegExp(rule.test.source.replace(\'<%\', \'<\\\?\').replace('%>', '\\\?>')); --%>
</script>
<!--基本信息模板-->
<script id="tpl1" type="text/html">
    <?if (list){?>
    <?for(var i=0;i<list.length;i++){?>
    <div class="content-box">
        <form class="content" name="basic-info" id="basic-info<?=list[i].num?>">
            <div class="name">
                <span>姓名</span>
              <!-- <input type="text" name="name" maxlength="15" value="<?=list[i].name?>">-->
			   <input type="text" name="name" maxlength="15" value="${user.vUserName}">
            </div>
            <div class="gender">
                <span>性别</span>
                <div class="sel-box">
                    <select name="gender">
                        <option value="">请选择</option>
                        <option>男</option>
                        <option>女</option>
                        <option>保密</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div></div>
                </div>
            </div>
            <div class="birthday">
                <span>生日</span>
                <div class="sel-box">
                    <select name="birthday-n">

                        <option value="1985">1985</option>

                        <option value="1986">1986</option>

                        <option value="1987">1987</option>

                        <option value="1988">1988</option>

                        <option value="1989">1989</option>

                        <option value="1990">1990</option>

                        <option value="1991">1991</option>

                        <option value="1992">1992</option>

                        <option value="1993">1993</option>

                        <option value="1994">1994</option>

                        <option value="1995">1995</option>

                        <option value="1996">1996</option>

                        <option value="1997">1997</option>

                        <option value="1998">1998</option>

                        <option value="1999">1999</option>

                        <option value="2000">2000</option>

                        <option value="2001">2001</option>

                        <option value="2002">2002</option>

                        <option value="2003">2003</option>

                        <option value="2004">2004</option>

                        <option value="2005">2005</option>

                        <option value="2006">2006</option>

                        <option value="2007">2007</option>

                        <option value="2008">2008</option>

                        <option value="2009">2009</option>

                        <option value="2010">2010</option>

                        <option value="2011">2011</option>

                        <option value="2012">2012</option>

                        <option value="2013">2013</option>

                        <option value="2014">2014</option>

                        <option value="2015">2015</option>

                        <option value="2016">2016</option>

                        <option value="2017">2017</option>

                        <option value="2018">2018</option>

                        <option value="2019">2019</option>

                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <div class="sel-box">
                    <select name="birthday-y">
                        <option value="">请选择</option>
                        <option>01</option>
                        <option>02</option>
                        <option>03</option>
                        <option>04</option>
                        <option>05</option>
                        <option>06</option>
                        <option>07</option>
                        <option>08</option>
                        <option>09</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <div class="nation">
                <span>国家</span>

                <div class="sel-box">
                    <select name="nation">
                        <option value="">请选择</option>

                        <option>中国</option>

                        <option>丹麦</option>

                        <option>乌克兰</option>

                        <option>俄罗斯</option>

                        <option>加拿大</option>

                        <option>匈牙利</option>

                        <option>南非</option>

                        <option>印度</option>

                        <option>奥地利</option>

                        <option>巴西</option>

                        <option>德国</option>

                        <option>意大利</option>

                        <option>挪威</option>

                        <option>新加坡</option>

                        <option>新西兰</option>

                        <option>日本</option>

                        <option>比利时</option>

                        <option>法国</option>

                        <option>波兰</option>

                        <option>泰国</option>

                        <option>澳大利亚</option>

                        <option>爱尔兰</option>

                        <option>瑞典</option>

                        <option>瑞士</option>

                        <option>白俄罗斯</option>

                        <option>美国</option>

                        <option>芬兰</option>

                        <option>英国</option>

                        <option>荷兰</option>

                        <option>菲律宾</option>

                        <option>西班牙</option>

                        <option>阿根廷</option>

                        <option>韩国</option>

                        <option>马来西亚</option>

                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>

            </div>
            <div class="city">
                <span>所在城市</span>

                <input type="text" name="city" data-selector="city" readonly maxlength="20" value="${user.bcity}">

            </div>
            <div class="phone">
                <span>手机号码</span>
                <input type="text" name="phone" value="${user.telep}">
            </div>
            <div class="email">
                <span>常用邮箱</span>
                <input type="text" name="email" maxlength="32" value="${user.email}"
            </div>




            <input id="headpic" name="headpic" type="hidden" value="<?=list[i].picId?>">
        </form>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl1-1" type="text/html">
    <? for(var i = 0;i<info.length;i++) {?>
    <div class="head"><img src="https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png" alt=""></div>
    <div class="content">
        <p class="name"><?= info[i][0].value ?></p>
        <p><span class="gender"><?= info[i][1].value ?></span> | <span class="birthday"><?= info[i][2].value ?>-<?= info[i][3].value ?>-01</span> |
            <span class="nation"><?= info[i][4].value ?></span> | <span class="city"><?= info[i][5].value ?></span></p>
        <p><span class="phone"><?=info[i][6].value?></span> | <span class="email"><?=info[i][7].value?></span></p>
        <p style="display: none;"><span class="desc"><?=info[i][8].value?></span></p>
    </div>
    <?}?>
</script>
<!--期望实习模板-->

<script id="tpl2" type="text/html">
    <?if (list){?>
    <?for(var i=0;i<list.length;i++){?>
    <div class="content-box">
        <form class="content" name="expect-practice" id="expect-practice<?=list[i].num?>">
            <?for(var j=0;j<list[i].post.length;j++){?>
            <div class="post post-select">
                <span></span>
                <input type="text" name="post" value="${ext.job}" maxlength="18">
                <div class="add-post">添加</div>
            </div>
            <?}?>
            <?for(var k=0;k<list[i].area.length;k++){?>
            <div class="area">
                <span></span>
                <input type="text" name="area" data-selector="city" value="${ext.cty}" readonly>
                <div class="add-area">添加</div>
            </div>
            <?}?>
            <div class="day">
                <span>期望天数</span>
                <div class="sel-box">
                    <select class="day-btn" name="day">
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option selected>5</option>
                        <option>6</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <div class="time">
                <span>实习月份</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n">
                            <option></option>
                            <option></option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n">
                            <option></option>
                            <option></option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="salary">
                <span>期望日薪</span>
                <input type="text" name="salary" placeholder="只能填写数字，如200" value="${ext.sly}" maxlength="4">
            </div>
            <div class="go-time">
                <span>到岗日期</span>
                <input type="text" name="go-time" class="datetimepicker" value="<?=list[i].goTime?>" readonly>
            </div>
        </form>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl2-1" type="text/html">
    <? for(var i = 0;i<info.length;i++) {?>
    <div class="content clearfix">
        <p class="post"><b><i>期望职位</i>：</b><span><?=info[i][0].value?></span></p>
        <p class="area"><b><i>期望地点</i>：</b><span><?=info[i][info[i][info[i].length-2].value].value?></span></p>
        <p class="day">
            <b><i>期望天数</i>：</b><span><?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value].value?>天/周</span></p>
        <p class="time">
            <b><i>实习月份</i>：</b><span><?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+1].value?>.<?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+2].value?></span>-<span><?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+3].value?>.<?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+4].value?></span></p>
        <p class="salary">
            <b><i>期望日薪</i>：</b><span>¥<span><?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+5].value?></span>/天</span>
        </p>
        <p class="go-time">
            <b><i>到岗日期</i>：</b><span><?=info[i][info[i][info[i].length-2].value+info[i][info[i].length-1].value+6].value?></span>
        </p>
    </div>
    <?}?>
</script>
<script id="tpl2-2" type="text/html">
    <div class="post post-select">
        <span></span>
        <input type="text" name="post" maxlength="18">
        <div class="del-post">删除</div>
    </div>
</script>
<script id="tpl2-3" type="text/html">
    <div class="area">
        <span></span>
        <input type="text" name="area" data-selector="city" readonly>
        <div class="del-area">删除</div>
    </div>
</script>

<!--教育背景模板-->
<script id="tpl3" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="edu-bg" id="edu-bg<?=list[i].num?>">
            <div class="school">
                <span>学校</span>

                <input type="text" name="school" value="<?=list[i].school?>" data-selector="school"
                       placeholder="如未检索到学校时，【输入学校】框中输入学校，点击【录入】即可" readonly maxlength="15">

                <?if (list[i].isAbroad){?>
                <div class="isabroad active"><b><img src=https://xbimg.xiaobaishixi.com/static/img/resume2/gou.svg?v=ee0376a2c373833dec7c2b44b9e9d5fb></b>我是海外留学生</div>
                <?}else{?>
                <div class="isabroad"><b><img src=https://xbimg.xiaobaishixi.com/static/img/resume2/gou.svg?v=ee0376a2c373833dec7c2b44b9e9d5fb></b>我是海外留学生</div>
                <?}?>
            </div>
            <div class="school-time">
                <span>在校时间</span>
                <div class="sel-box">
                    <select name="school-time-start"></select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <i>至</i>
                <div class="sel-box">
                    <select name="school-time-end"></select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <div class="education">
                <span>学历</span>
                <div class="sel-box">
                    <select name="education">
                        <option>大专</option>
                        <option>本科</option>
                        <option>硕士</option>
                        <option>博士</option>
                        <option>其他</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>

            <div class="major-type">
                <span>专业类别</span>
                <div class="sel-box sel-box1">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <div class="sel-box sel-box2">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <div class="sel-box sel-box3">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>

            <div class="major">
                <span>专业</span>
                <input type="text" name="major" value="<?=list[i].major?>" maxlength="15">
            </div>
            <div class="score">
                <span>成绩排名</span>

                <div class="sel-box">
                    <select name="score">
                        <option>请选择</option>
                        <option>前10%</option>
                        <option>前30%</option>
                        <option>中等</option>
                        <option>中下</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>

            </div>
            <div class="course">
                <span>主修课程</span>
                <textarea wrap1="virtual" maxlength="256" name="course"><?=list[i].course?></textarea>
            </div>
            <div class="honor">
                <span>荣誉奖励</span>
                <textarea wrap1="virtual" maxlength="512" name="honor"><?=list[i].honor?></textarea>
            </div>
        </form>
        <div class="delete" style="display: none;">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="edu-bg" id="edu-bg<?=num[i]?>">
            <div class="school">
                <span>学校</span>

                <input type="text" name="school" data-selector="school" placeholder="如未检索到学校时，【输入学校】框中输入学校，点击【录入】即可" readonly maxlength="15">

                <div class="isabroad"><b><img src=https://xbimg.xiaobaishixi.com/static/img/resume2/gou.svg?v=ee0376a2c373833dec7c2b44b9e9d5fb></b>我是海外留学生</div>
            </div>
            <div class="school-time">
                <span>在校时间</span>
                <div class="sel-box">
                    <select name="school-time-start"></select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <i>至</i>
                <div class="sel-box">
                    <select name="school-time-end"></select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <div class="education">
                <span>学历</span>
                <div class="sel-box">
                    <select name="education">
                        <option>大专</option>
                        <option>本科</option>
                        <option>硕士</option>
                        <option>博士</option>
                        <option>其他</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>

            <div class="major-type">
                <span>专业类别</span>
                <div class="sel-box sel-box1">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <div class="sel-box sel-box2">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
                <div class="sel-box sel-box3">
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>

            <div class="major">
                <span>专业</span>
                <input type="text" name="major" maxlength="15">
            </div>
            <div class="score">
                <span>成绩排名</span>

                <div class="sel-box">
                    <select name="score">
                        <option>请选择</option>
                        <option>前10%</option>
                        <option>前30%</option>
                        <option>中等</option>
                        <option>中下</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>

            </div>
            <div class="course">
                <span>主修课程</span>
                <textarea wrap1="virtual" maxlength="256" name="course"></textarea>
            </div>
            <div class="honor">
                <span>荣誉奖励</span>
                <textarea wrap1="virtual" maxlength="512" name="honor"></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl3-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content clearfix">
        <p class="school"><b><i>学校</i>：</b><span><?=info[i][0].value?></span>

            <?if (info[i][11]){?>
            <span class="abroad"><?=info[i][11].value?></span>
            <?}?>

        </p>
        <p class="school-time"><b><i>在校时间</i>：</b><span><?=info[i][1].value?></span>-<span><?=info[i][2].value?></span>
        </p>
        <p class="education"><b><i>学历</i>：</b><span><?=info[i][3].value?></span></p>

        <p class="major-type"><b><i>专业类别</i>：</b><span><?=info[i][4].value?></span><span><?=info[i][5].value?></span><span><?=info[i][6].value?></span></p>

        <p class="major"><b><i>专业</i>：</b><span><?=info[i][7].value?></span></p>
        <p class="score"><b><i>成绩排名</i>：</b><span><?=info[i][8].value?></span></p>
        <p class="course"><b><i>主修课程</i>：</b><span><?=info[i][9].value?></span></p>
        <p class="honor"><b><i>荣誉奖励</i>：</b><span><?=info[i][10].value?></span></p>
    </div>
    <?}?>
</script>
<!--实习经历模板-->
<script id="tpl4" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="practice-ex" id="practice-ex<?=list[i].num?>">
            <div class="company">
                <span>公司名称</span>
                <input type="text" name="company" value="<?=list[i].company?>" maxlength="20">
            </div>
            <div class="position">
                <span>职位名称</span>
                <input type="text" name="position" value="<?=list[i].position?>" maxlength="15">
            </div>
            <div class="time">
                <span>实习时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>实习地点</span>

                <input type="text" name="place" data-selector="city" value="<?=list[i].place?>" readonly>

            </div>
            <div class="duty">
                <span>工作职责</span>
                <textarea wrap1="virtual" name="duty" maxlength="350"><?=list[i].duty?></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="practice-ex" id="practice-ex<?=num[i]?>">
            <div class="company">
                <span>公司名称</span>
                <input type="text" name="company" maxlength="20">
            </div>
            <div class="position">
                <span>职位名称</span>
                <input type="text" name="position" maxlength="15">
            </div>
            <div class="time">
                <span>实习时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>实习地点</span>

                <input type="text" name="place" data-selector="city" readonly>

            </div>
            <div class="duty">
                <span>工作职责</span>
                <textarea wrap1="virtual" name="duty" maxlength="350"></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl4-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content clearfix">
        <p class="company"><b><i>公司名称</i>：</b><span><?=info[i][0].value?></span></p>
        <p class="position"><b><i>职位名称</i>：</b><span><?=info[i][1].value?></span></p>
        <?if (info[i][4].value==='至今'){?>
        <p class="time"><b><i>实习时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?></span></p>
        <?}else{?>
        <p class="time"><b><i>实习时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?>.<?=info[i][5].value?></span></p>
        <?}?>
        <p class="place"><b><i>实习地点</i>：</b><span><?=info[i][6].value?></span></p>
        <p class="duty"><b><i>工作职责</i>：</b><span><?=info[i][7].value?></span>
        </p>
    </div>
    <?}?>
</script>
<!--学术经历模板-->
<script id="tpl5" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="academic-ex" id="academic-ex<?=list[i].num?>">
            <div class="name">
                <span>项目名称</span>
                <input type="text" name="name" value="<?=list[i].name?>" maxlength="50">
            </div>
            <div class="position">
                <span>担任职务</span>
                <input type="text" name="position" value="<?=list[i].position?>" maxlength="25">
            </div>
            <div class="time">
                <span>项目时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>项目地点</span>

                <input type="text" name="place" data-selector="city" value="<?=list[i].place?>" readonly>

            </div>
            <div class="des">
                <span>项目描述</span>
                <textarea wrap1="virtual" name="des" maxlength="350"><?=list[i].des?></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="academic-ex" id="academic-ex<?=num[i]?>">
            <div class="name">
                <span>项目名称</span>
                <input type="text" name="name" maxlength="50">
            </div>
            <div class="position">
                <span>担任职务</span>
                <input type="text" name="position" maxlength="25">
            </div>
            <div class="time">
                <span>项目时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>项目地点</span>

                <input type="text" name="place" data-selector="city" readonly>

            </div>
            <div class="des">
                <span>项目描述</span>
                <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl5-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content clearfix">
        <p class="name"><b><i>项目名称</i>：</b><span><?=info[i][0].value?></span></p>
        <p class="position"><b><i>担任职务</i>：</b><span><?=info[i][1].value?></span></p>
        <?if (info[i][4].value==='至今'){?>
        <p class="time"><b><i>项目时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?></span></p>
        <?}else{?>
        <p class="time"><b><i>项目时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?>.<?=info[i][5].value?></span></p>
        <?}?>
        <p class="place"><b><i>项目地点</i>：</b><span><?=info[i][6].value?></span></p>
        <p class="des"><b><i>项目描述</i>：</b><span><?=info[i][7].value?></span>
        </p>
    </div>
    <?}?>
</script>
<!--校园经历模板-->
<script id="tpl6" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="school-ex" id="school-ex<?=list[i].num?>">
            <div class="name">
                <span>活动名称</span>
                <input type="text" name="name" value="<?=list[i].name?>" maxlength="50">
            </div>
            <div class="position">
                <span>担任职务</span>
                <input type="text" name="position" value="<?=list[i].position?>" maxlength="25">
            </div>
            <div class="time">
                <span>活动时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>活动地点</span>

                <input type="text" name="place" data-selector="city" value="<?=list[i].place?>" readonly>

            </div>
            <div class="des">
                <span>活动描述</span>
                <textarea wrap1="virtual" name="des" maxlength="350"><?=list[i].des?></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="school-ex" id="school-ex<?=num[i]?>">
            <div class="name">
                <span>活动名称</span>
                <input type="text" name="name" maxlength="50">
            </div>
            <div class="position">
                <span>担任职务</span>
                <input type="text" name="position" maxlength="25">
            </div>
            <div class="time">
                <span>活动时间</span>
                <div class="start">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-start-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-start-y">
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
                <i>至</i>
                <div class="end">
                    <div class="sel-box">
                        <select class="t-sel1" name="time-end-n"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <div class="sel-box">
                        <select class="t-sel2" name="time-end-y">
                            <option>至今</option>
                            <option>01</option>
                            <option>02</option>
                            <option>03</option>
                            <option>04</option>
                            <option>05</option>
                            <option>06</option>
                            <option>07</option>
                            <option>08</option>
                            <option>09</option>
                            <option>10</option>
                            <option>11</option>
                            <option>12</option>
                        </select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="place">
                <span>活动地点</span>

                <input type="text" name="place" data-selector="city" readonly>

            </div>
            <div class="des">
                <span>活动描述</span>
                <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl6-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content clearfix">
        <p class="name"><b><i>活动名称</i>：</b><span><?=info[i][0].value?></span></p>
        <p class="position"><b><i>担任职务</i>：</b><span><?=info[i][1].value?></span></p>
        <?if (info[i][4].value==='至今'){?>
        <p class="time"><b><i>活动时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?></span></p>
        <?}else{?>
        <p class="time"><b><i>活动时间</i>：</b><span><?=info[i][2].value?>.<?=info[i][3].value?></span>-<span><?=info[i][4].value?>.<?=info[i][5].value?></span></p>
        <?}?>
        <p class="place"><b><i>活动地点</i>：</b><span><?=info[i][6].value?></span></p>
        <p class="des"><b><i>活动描述</i>：</b><span><?=info[i][7].value?></span>
        </p>
    </div>
    <?}?>
</script>
<!--技能爱好模板-->
<script id="tpl7" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="skill-hobby" id="skill-hobby<?=list[i].num?>">
            <div class="type">
                <span>类型</span>
                <div class="sel-box">
                    <select name="type">
                        <option>专业技能</option>
                        <option>语言水平</option>
                        <option>兴趣爱好</option>
                        <option>其他</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <?if (list[i].name!='语言水平'){?>
            <div class="des">
                <span>说明</span>
                <textarea wrap1="virtual" name="des" maxlength="350"><?=list[i].des?></textarea>
            </div>
            <div class="language-box" style="display: none;">
                <div class="add-language">添加一门语言</div>
            </div>
            <?}else{?>
            <div class="des" style="display: none;">
                <span>说明</span>
            </div>
            <div class="language-box">
                <? for(var j = 0;j<list[i].des.substring(0,list[i].des.length-1).split(',').length;j++) {?>
                <div class="language">
                    <span class="type">语言</span>
                    <div class="sel-box sel-box1">
                        <select name="language_type"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <span class="level">水平</span>
                    <div class="sel-box sel-box2">
                        <select name="language_level"></select>
                        <div class="arrow-box">
                            <div class="arrow"></div>
                        </div>
                    </div>
                    <span class="score">分数</span>
                    <input type="number" name="score" min="1" max="9999">
                    <div class="del-language">删除</div>
                </div>
                <?}?>
                <div class="add-language">添加一门语言</div>
            </div>
            <?}?>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="skill-hobby" id="skill-hobby<?=num[i]?>">
            <div class="type">
                <span>类型</span>
                <div class="sel-box">
                    <select name="type">
                        <option>专业技能</option>
                        <option>语言水平</option>
                        <option>兴趣爱好</option>
                        <option>其他</option>
                    </select>
                    <div class="arrow-box">
                        <div class="arrow"></div>
                    </div>
                </div>
            </div>
            <div class="des">
                <span>说明</span>
                <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
            </div>
            <div class="language-box" style="display: none;">
                <div class="add-language">添加一门语言</div>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl7-1" type="text/html">
    <div class="content clearfix">
        <?for(var i=0;i<info.length;i++){?>
        <p><b><i><?=info[i][0].value?></i>：</b><?-info[i][1].value?></p>
        <?}?>
    </div>
</script>
<script id="tpl7-2" type="text/html">
    <div class="language">
        <span class="type">语言</span>
        <div class="sel-box sel-box1">
            <select name="language_type"></select>
            <div class="arrow-box">
                <div class="arrow"></div>
            </div>
        </div>
        <span class="level">水平</span>
        <div class="sel-box sel-box2">
            <select name="language_level"></select>
            <div class="arrow-box">
                <div class="arrow"></div>
            </div>
        </div>
        <span class="score">分数</span>
        <input type="number" name="score" min="1" max="9999">
        <div class="del-language" style="display: none">删除</div>
    </div>
</script>
<!--作品展示模板-->
<script id="tpl8" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="opus1" id="opus<?=list[i].num?>">
            <div class="link">
                <span>作品链接</span>
                <input type="text" name="link" value="<?=list[i].link?>" maxlength="512">
            </div>
            <div class="des">
                <span>文字说明</span>
                <textarea wrap1="virtual" name="des" maxlength="350"><?=list[i].des?></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}else{?>
    <?for(var i = 0;i<num.length;i++){?>
    <div class="content-box">
        <form class="content" name="opus1" id="opus<?=num[i]?>">
            <div class="link">
                <span>作品链接</span>
                <input type="text" name="link" maxlength="512" >
            </div>
            <div class="des">
                <span>文字说明</span>
                <textarea wrap1="virtual" name="des" maxlength="350"></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl8-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content clearfix">
        <p class="link"><b><i>作品链接</i>：</b><a><?=info[i][0].value?></a></p>
        <p class="des"><b><i>文字说明</i>：</b><span><?=info[i][1].value?></span>
        </p>
    </div>
    <?}?>
</script>
<!--个人评价模板-->
<script id="tpl9" type="text/html">
    <?if (list){?>
    <? for(var i = 0;i<list.length;i++) {?>
    <div class="content-box">
        <form class="content" name="personal-ev" id="personal-ev<?=list[i].num?>">
            <div>
                <span></span>
                <textarea wrap1="virtual" name="des" maxlength="650"><?=list[i].des?></textarea>
            </div>
        </form>
        <div class="delete">删除该条</div>
    </div>
    <?}?>
    <?}?>
</script>
<script id="tpl9-1" type="text/html">
    <?for(var i=0;i<info.length;i++){?>
    <div class="content">
        <p><?=info[i][0].value?></p>
    </div>
    <?}?>
</script>
<script>
    var $basicInfo = $('.basic-info'),
        $expectPractice = $('.expect-practice'),
        $eduBg = $('.edu-bg'),
        $practiceEx = $('.practice-ex'),
        $academicEx = $('.academic-ex'),
        $schoolEx = $('.school-ex'),
        $skillHobby = $('.skill-hobby'),
        $opus = $('.opus'),
        $personalEv = $('.personal-ev'),
        $attachment = $('.attachment'),
        $moduleList = $('.module-list');
    //autosize插件初始化所有textarea高度自适应
    function selAutoSize() {
        autosize($('textarea'));
    }
    selAutoSize();
    //滑动右侧固定
    //var scrTop = $(document).scrollTop();
    //if (scrTop > 80) {
    // $('.module-nav').css({"top": 15});
    //} else {
    // $('.module-nav').css({"top": 105});
    //}
    var flag1 = true, flag2 = true;
    $(window).on('scroll', function () {
        var top = $(document).scrollTop();
        if (top > 80) {
            flag2 = true;
            if (flag1) {
                flag1 = false;
                $('.module-nav').animate({"top": 15}, 300);
            }
        } else {
            flag1 = true;
            if (flag2) {
                flag2 = false;
                $('.module-nav').animate({"top": 105}, 300);
            }
        }
    })
    //input,select,textarea样式切换
    $('.module-item').on('focus', 'input,select,textarea', function () {
        $(this).addClass('active');
    })
    $('.module-item').on('blur', 'input,select,textarea', function () {
        $(this).removeClass('active');
    })
    //获取当前时间年份和月份
    function nowDate() {
        var date = new Date(), y = date.getFullYear(), m = date.getMonth() + 1, d = date.getDate();
//m.length===1?m=('0'+m):m;
        return {y: y, m: m, d: d};
    }
    var nowtime = nowDate();
    //日期选择插件
    var reportWay = '2019-04-21';
    function dataSel() {
        $('input.datetimepicker').datetimepicker({
            lang: "ch", //语言选择中文 注：旧版本 新版方法：$.datetimepicker.setLocale('ch');
            format: "Y-m-d", //格式化日期
            timepicker: false, //关闭时间选项
//datepicker:false,
            yearStart: nowtime.y, //设置最小年份
            yearEnd: nowtime.y + 10, //设置最大年份
            minDate: nowtime.y + '-' + nowtime.m + '-' + nowtime.d,
//todayButton:false, //关闭选择今天按钮
            value: reportWay || nowtime.y + '-' + (nowtime.m < 10 ? '0'+nowtime.m : nowtime.m) + '-' + nowtime.d
        });
    }
    dataSel();
    //专业类型选择
    function majorSel(_this) {
        $.ajaxSettings.async = false;
        $.getJSON('https://xbimg.xiaobaishixi.com/static/nmain/json/major.json?v=c3bb28ccb3499d74a8a83c86d148f74f', function (data) {
            _this.majorChoose(data, [{'name': 'major_subject', 'class': 'major_subject'},
                {'name': 'major_class', 'class': 'major_class'},{'name': 'major_spec', 'class': 'major_spec'}], [null, null, null]);
        });
    }
    majorSel($('.major-type'));
    //语言水平选择
    $('.skill-hobby').on('change', 'select[name="type"]', function () {
        var $this = $(this), des = $this.parents('.type').siblings('.des');
        if ($this.val() === '语言水平') {
            var html = template('tpl7-2');
            des.hide().find('textarea').remove();
            des.siblings('.language-box').show().find('.language').remove();
            des.siblings('.language-box').find('.add-language').show().before(html);
            language($this.parents('.type').siblings('.language-box').find('.language'));
        } else {
            des.find('textarea').remove();
            des.append('<textarea wrap1="virtual" name="des" maxlength="350"></textarea>').show().siblings('.language-box').hide().find('.language').remove();
            selAutoSize();
        }
    })
    function language(el) {
        $.getJSON('https://xbimg.xiaobaishixi.com/static/nmain/json/language.json?v=78dc01f08643eb555d137278cae1b73a', function (data) {
            el.languageChoose(data, [el.find('select[name="language_type"]'), el.find('select[name="language_level"]')], [null, null]);
        });
    }
    //基本信息国家切换
    $('.basic-info').on('change', 'select[name="nation"]', function () {
        var city = $(this).parents('.nation').siblings('.city').find('input[name="city"]');
        city.val('');
        if ($(this).val() !== '中国') {
            city.attr('data-selector', "").removeAttr('readonly');
        } else {
            city.attr({'data-selector':'city', 'readonly':'true'});
        }
    });
    //基本信息生日
    var birthdaY = [];
    for(var i = 0;i<=33;i++){
        birthdaY.push(nowtime.y-33+i);
    }
    function birthday() {
        var op = '<option value="">请选择</option>';
        $.each(birthdaY, function (i, v) {
            op += '<option>' + v + '</option>';
        });
        $('select[name="birthday-n"]').html(op);
    }
    birthday();
    //期望实习实习月份
    function epTime() {
        $expectPractice.find('select[name="time-start-n"]').find('option').eq(0).text(nowtime.y).siblings('option').text(nowtime.y + 1);
        $expectPractice.find('select[name="time-start-y"]').val('0'+ nowtime.m);
        $expectPractice.find('select[name="time-end-n"]').find('option').eq(0).text(nowtime.y).siblings('option').text(nowtime.y + 1);
        $expectPractice.find('select[name="time-end-y"]').val('0'+ nowtime.m);
    }
    epTime();
    //期望实习期望职位
    function epPost(){
        var $postBox = $('.post-box'),$this = '';
        $('.expect-practice').on('click','.post-select input',function (e) {
            e.stopPropagation();
            $(".jq-selector").hide();
            $this = $(this);
            $postBox.css({
                top:$this.offset().top+29,
                left:$this.offset().left
            }).show();
        })
        $postBox.on('click','.list1',function () {
            $this.val($(this).find('span').text());
            $postBox.hide();
        })
        $postBox.on('click','.list2',function (e) {
            e.stopPropagation();
            $this.val($(this).text());
            $postBox.hide();
        })
        $('html,body').on('click',function(){
            $postBox.hide();
        })
        $postBox.on('click',function(e){
            e.stopPropagation();
        })
    }
    epPost();
    //教育背景在校时间
    function schoolTime(el) {
        var op1 = '', op2 = '';
        for (var i = 0; i < 12; i++) {
            op1 += '<option>' + (nowtime.y - i) + '</option>';
        }
        for (var j = 0; j < 16; j++) {
            op2 += '<option>' + (nowtime.y + 8 - j) + '</option>';
        }
        el.find('select[name="school-time-start"]').html(op1);
        el.find('select[name="school-time-end"]').html(op2);
    }
    schoolTime($('.edu-bg'));
    //实习经历实习时间&&学术经历项目时间&&校园经历活动时间
    function practiceTime(el) {
        var op1 = '', op2 = '<option>至今</option>';
        for (var i = 0; i < 11; i++) {
            op1 += '<option>' + (nowtime.y - i) + '</option>';
            op2 += '<option>' + (nowtime.y - i) + '</option>';
        }
        el.find('select[name="time-start-n"]').html(op1);
        el.find('select[name="time-end-n"]').html(op2);
    }
    practiceTime($('.practice-ex'));
    practiceTime($('.academic-ex'));
    practiceTime($('.school-ex'));
    //结束时间‘至今’和非‘至今’切换
    $('.module-item').on('change', 'select[name="time-end-n"]', function () {
        var $this = $(this), next = $this.parent('.sel-box').next().find('select[name="time-end-y"]');
        if ($this.val() === '至今') {
            next.val('至今');
        } else {
            next.val('01');
        }
    })
    $('.module-item').on('change', 'select[name="time-end-y"]', function () {
        var $this = $(this), prev = $this.parent('.sel-box').prev().find('select[name="time-end-n"]');
        if ($this.val() === '至今') {
            prev.val('至今');
        } else {
            if (prev.val() === '至今') {
                prev.val(nowtime.y);
            }
        }
    })
    //placeholder设置
    $personalEv.find('textarea').attr('placeholder','为人吃苦耐劳，学习能力强，善于团队合作；\n性格开朗乐观，能积极面对压力；\n擅长多线程工作和时间管理，计划意识强，做事细致认真，能快速上手新的工作。');
    //弹窗1
    function popup1(text) {
        $('.cover').css('background-color', 'transparent').fadeIn(200).find('.popup1').fadeIn(200).find('.tips').text(text);
        var timer = setTimeout(function () {
            $('.cover').hide().css('background-color', 'rgba(0,0,0,.5)').find('.popup1').fadeOut(300);
            clearTimeout(timer);
        }, 1500)
    }
</script>
    <!-- <script src=https://xbimg.xiaobaishixi.com/static/js/resume2/resume2.js?v=4ecd60781cec4e959e367dd48d492286></script> -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/resume.js"></script>
<script>
    function onUploadFinish(success, fileuuid, fileurl,errMsg) {
        if (success) {
            var img = $("#img_upload")[0];
            img.src = fileurl;
            img.onload = function () {
                $(".cropControlReset").click();
            };
// $("#coverlayer").hide();
            $('#headpic').val(fileuuid);
        } else {
            if(errMsg){
                popup1(errMsg);
            }else{
                popup1('上传失败！');
            }
            $(".cropControlReset").click();
        }
    }
</script>

</body>
</html>