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
    <title>职位详情</title>
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

    <link rel="alternate" media="only screen and (max-width: 750px)"
          href="https://wap.xiaobaishixi.com/job/DVQAYY3VOXV2UWGAX8TTKKEAU6WF9JOB">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/job_details.css?v=d700d0ec494e67b127372aae89084068"/>
    <link rel="stylesheet" type="text/css" href="https://xbimg.xiaobaishixi.com/static/css/jquery.datetimepicker.css?v=22baa8aa2e0e17c6f0aacea433dc4737"/>
    <link rel="stylesheet" type="text/css" href="/css/hzw-city-picker.css?v=e1b72704981131e49cdd3a1b4ff8f5ad"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/new_job_info.css?v=d2e6468cfc634f3a8d09b48d222522d1">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/js/jq.modal/jq.modal.css?v=42f21a612a856f640f56127d406991c1">
    <style>
        @font-face {
            font-family: myFont;
            src: url("data:application/octet-stream;base64,")
        }
        .hzw-city-picker:before,
        .hzw-city-picker:after {
            display: none;
        }
        .hzw-city-picker {
            left: 0 !important;
            right: 0 !important;
            top: 50% !important;
            bottom: 0 !important;
            margin: -170px auto 0 !important;
            height: 340px !important;
        }
        .job_introduce img {
            max-width: 760px !important;
        }
        .job-header .job_msg .job_money:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_money.png?v=ba9e392de6559a12c2e9a548b44c8317);
        }
        .job-header .job_msg .job_position:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_position.png?v=b249e94fa6128700823fb28df84740fb);
        }
        .job-header .job_msg .job_academic:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_academic.png?v=db786285ca9196b3f2ef7752bbeb9725);
        }
        .job-header .job_msg .job_week:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_date.png?v=d304cd7207b37332f36947d732b12115);
        }
        .job-header .job_msg .job_time:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_tag.png?v=0dd665b75bd4f78b1d577b23a3448547);
        }
        .content_right .job_collect .job_star {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_star.png?v=ba53649606c962ff9927eeea7a39f95a);
        }
        .content_right .sc_confirm .job_star {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_icon_star_active.png?v=2cea929838b36eb8951ccdcdeb20e039);
        }
        .content_left .con-com_introduce .job_com_position .com_position:before {
            background-image: url(https://xbimg.xiaobaishixi.com/static/nmain/img/job_com_position.png?v=4d0ae68687bdce46490db9a9190ce3ba);
        }
        .bds_tsina {
            background-image: url('https://xbimg.xiaobaishixi.com/static/img/wb.png?v=ba8a275eab75d11895f9dcbd002ac3e9') !important;
            background-position: 0 !important;
            margin: 4px !important;
            border-right: 1px solid #ccc;
            padding-right: 4px;
            height: 20px !important;
            background-size: 20px;
        }
        .bds_weixin {
            background-image: url('https://xbimg.xiaobaishixi.com/static/img/wx.png?v=080d042fb53e247b36a18a75e2105590') !important;
            background-position: 0 !important;
            margin: 4px !important;
            padding-right: 4px;
            height: 20px !important;
            background-size: 20px;
        }
        .bds_sqq {
            background-image: url('https://xbimg.xiaobaishixi.com/static/img/qq1.png?v=8f7416fad68ebdd971bdd270d7b1197c') !important;
            background-position: 0 !important;
            margin: 4px !important;
            padding-right: 4px;
            height: 20px !important;
            background-size: 17px;
        }
        .resume_applyforme{
	        display: inline-block;
		    text-align: center;
		    width: 105px;
		    height: 45px;
		    line-height: 45px;
		    border-radius: 4px;
		    background-color: #ffd100;
}
        }
        .com_resss{
            cursor: pointer;
        }
    </style>
    <script src="https://xbimg.xiaobaishixi.com/static/nmain/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/js/form/form.js?v=ed1a03ddb5d592ef6eabd53684be03d6"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/js/ref/layer/layer.js?v=91b08e09ce3849b9f5f894670d83e9a9"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/main_base.js?v=269de1a0535ff26b21cec2d24dbc329b"></script>
	<script src="https://xbimg.xiaobaishixi.com/static/js/jq.toast.js?v=75acd72cdf8849053ce4c1228c086b3b"></script>
    <script type="text/javascript">
    var url = "${pageContext.request.contextPath}/check_post"
    $(document).ready(function(){
    	$("#btn1").click(function(){
    	    /* alert("投递成功！") */
    	    var profile_demoid = $('#profile_demoid').val();
    	    var username_demoid = $('#username_demoid').val();
    	    var post_demoid = $('#post_demoid').val();
    	    
    		$.ajax({
    	        type: "post",
    	        url: url,
//    	      	data: "para="+para,  此处data可以为 a=1&b=2类型的字符串 或 json数据。
    	        data: {"para":1,"profile_demoid":profile_demoid,"username_demoid":username_demoid,"post_demoid":post_demoid},
    	        cache: false,
    	        async : false,
    	        dataType: "json",
    	        success: function (data ,textStatus, jqXHR)
    	        {
    	            if("true"==data.flag){
    	               alert("投递成功");
    	                return true;
    	            }else{
    	                alert("投递失败，请完善信息："+data.errorMsg);
    	                return false;
    	            }
    	        },
    	        error:function (XMLHttpRequest, textStatus, errorThrown) {      
    	            alert("请求失败！");
    	        }
    	     });
    	    
    	  });
    	});
    </script>


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

            <h1 hidden>职位详情</h1>
            <ul class="nav">
                <li>
                    <a  href="${pageContext.request.contextPath}/">首页</a>
                </li>
                <li>
                    <a  href="${pageContext.request.contextPath}/recruit?k=企业招聘&p=1&username=${username}">企业招聘</a>
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
             
                <a rel="nofollow" class="student-login">欢迎您：${username }</a>
            </div>

        </div>
        <div class="sub-header">


        </div>
    </div>

    <div class="job-box">
        <div>
            <div class="job-header">
                <div class="job-left">
                    <div class="new_job_name" title="游戏测试">
                        ${postDetail.post_name}

                    </div>
                    <div class="job_msg">
                        <span class="job_money cutom_font">¥${postDetail.comm}／天</span>
                        <span title="广州-海珠区" class="job_position">${postDetail.post_location}</span>
                        <span class="job_academic">${postDetail.post_education}</span>
                        <span class="job_week cutom_font">${postDetail.post_worktime}／周</span>

                        <span class="job_time cutom_font">实习${postDetail.practice_time}</span>


                        <span class="job_time cutom_font">提供转正机会</span>

                    </div>
                    <div class="job_tags" style="display: none">



                    </div>
                    <div class="job_date ">
                        <span class="cutom_font">${postDetail.detailTime}</span>
                    </div>
                </div>
                <div class="job-right">



<%-- <a href="${pageContext.request.contextPath}/resume/apply?post_id=${postDetail.post_id}&company_id=${postDetail.profile_id}&username=${username}"> --%>
					<button id="btn1" class="resume_applyforme com_resss">投个简历</a></button>
					<input id="profile_demoid" type="hidden" name="profile_id" value="${postDetail.profile_id}">
					<input id="username_demoid" type="hidden" name="username" value="${username}">
					<input id="post_demoid" type="hidden" name="post_id" value="${postDetail.post_id}">
					
                    <!-- <div id="resume" class="resume_apply com_res">投个简历</div> -->



                 <!--    <div class="job_collect sc ">
                        <img src="https://xbimg.xiaobaishixi.com/static/img/job_collect.png?v=2309f92352ff0e167c2949f2f85092f4" alt="">
                        <span class="job_star_status" >收藏</span></div>-->

                    <div> 
<!-- <span class="bdsharebuttonbox">
<img class="tip bgs jb" src="https://xbimg.xiaobaishixi.com/static/img/jb.png?v=176e4b89231257c7cc3f7bc538f36ef7" alt="" title="举报">
<a class="bds_weixin" data-cmd="weixin" title="分享到微信" data-stype="weixinShare"></a>
</span> -->
                       <!--  <script>
                            window._bd_share_config = {
                                "common": {
                                    "bdSnsKey": {"tsina": ""},
                                    "bdText": " 悦世界游戏",
                                    "bdMini": "1",
                                    "bdMiniList": false,
                                    "bdUrl": "",
                                    "bdPic": "https://xbimg.xiaobaishixi.com/63/89/63B9AA52382CC5864F0CC3AF353BB189.png",
                                    "bdStyle": "1",
                                    "bdSize": "24"
                                },
                                "share": {}
                            };
                            with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = '/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
                        </script> -->
                    </div>



                </div>
            </div>
        </div>
        <div class="job-content">
            <div class="content_left">
                <input type="hidden" class="taruuid" value="DVQAYY3VOXV2UWGAX8TTKKEAU6WF9JOB"/>



                <input type="hidden" class="toemail" value=""/>
                <input id="sdtoken_complain" name="sdtoken_complain" value="djFFl361IwsfqhVYiqUDvvySO3MBsmaI" type="hidden"/>
                <input id="sdtoken_cf" value="yzv8MWq1qk7cp2mnLtKxEBXVEKVBQq7e" type="hidden"/>
                <div class="con-job job_introduce">

                    <div class="job_good">职位诱惑：

                        <p>${postDetail.post_benefit}</p>

                    </div>

                    <div class="job_til">职位描述：</div>
                    <div class="job_part">



                        <div class="job_detail"><span style="font-size:14px;">岗位职责：</span><br>
                        ${postDetail.post_duty}
                        <span style="font-size:14px;">岗位要求：</span><br>
                        ${postDetail.post_require}
                    </div>
                </div>
                <div class="con-job con-com_introduce">
                    <div class="job_til">公司简介：</div>
                    <div class="job_com_name cutom_font">${postDetail.company_name}</div>
                    <div class="job_detail">${postDetail.company_culture}</div>
                    <div class="job_detail job_detail_msg">
                        <span>广州</span><span>${postDetail.comm}人</span><span>${postDetail.company_type}</span>
                    </div>


                <%--     <div class="job_com_position">
                        <p>公司地址：</p>
                        <span class="com_position">${postDetail.company_loacation}</span>
                    </div> --%>

                </div>
              <%--   <div class="con-job deadline">
                    <div class="job_til">截止时间：</div>
                    <div class="job_detail cutom_font">${postDetail.endTime}</div>
                </div>
 --%>
                 
            </div>
            <div class="content_right">
                <div class="job-com">
                 

                    <div class="com-num">
                        <img src="https://xbimg.xiaobaishixi.com/static/img/job_info.png?v=3aebc8822c0494d71f952c813b8c72d2" alt="">
                        <span>${postDetail.company_culture}</span>
                    </div>


                    <div class="com-class">
                        <img src="https://xbimg.xiaobaishixi.com/static/img/job_line.png?v=653b60e09ce73af231e06317a4d48e1a" alt="">
                        <span>${postDetail.company_type}</span>
                    </div>


                    <div class="man-class">
                        <img src="https://xbimg.xiaobaishixi.com/static/img/job_man.png?v=e260f980de9da5410118770e1f38476a" alt="">
                        <span>${postDetail.comm}人</span>
                    </div>


                </div>
            </div>
        </div>
  <!--       <div class="load_res_de"></div>
        <div class="jb-box">
            <span class="jb_close">x</span>
            <p class="jb_title">
                举报
            </p>
            <div class="inf">
                <p>请写下举报的理由</p>
                <textarea name="" class="inf_msg"></textarea>
                <button class="inf_pre">提交</button>
            </div>
        </div>
    </div> -->
    <!--城市选择-->
    <div class="sty--modal">
        <div class="sty--modal--bg"></div><!-- 
        <div class="sty--modal--container" data-sty-modal-id="not_complete">
            <div class="sty--modal--content">
                <div class="sty--modal--icon" data-icon="error"></div>
                <div class="sty--modal--title">投递失败</div>
                <div class="sty--modal--text" id="deli_faild">中文简历完整度小于54%，不能投递，请先完善简历~</div>
                <div class="sty--modal--btn">
                    <span data-style="active" class="sty--modal--close" id="suc_close">返回</span>
                </div>
            </div>
        </div> -->
     <!--    <div class="sty--modal--container" data-sty-modal-id="deliver_tip">
            <div class="sty--modal--content">
                <div class="sty--modal--icon" data-icon="error"></div>
                <div class="sty--modal--title">投递失败</div>
                <div class="sty--modal--text">您的投递次数已经达到每日上限啦~</div>
                <div class="sty--modal--btn">
                    <span data-style="active" class="sty--modal--close">关闭</span>
                </div>
            </div>
        </div> -->
        <div class="sty--modal--container" data-sty-modal-id="complete">
            <div class="sty--modal--content">
                <div class="sty--modal--icon" data-icon="tip"></div>
                <div class="sty--modal--title">投递确认</div>
                <div class="sty--modal--text" id="deli_prompt"></div>
                <div class="sty--modal--btn">
                    <span data-style="active" class="" id="del_pre" >确认投递</span>
                    <a data-style="primary" class="change_btn" href="">修改简历</a>
                </div>
                <div class="sty--modal--text" style="text-align: right"><span class="sty--modal--close" >放弃投递</span></div>
            </div>
        </div>
       <!--  <div class="sty--modal--container" data-sty-modal-id="success">
            <div class="sty--modal--content">
                <div class="sty--modal--icon" data-icon="success"></div>
                <div class="sty--modal--title">投递成功</div>
                <div class="sty--modal--text">温馨提示：若在求职过程中遇到收取费用，或实习地址、联系方式与官方发布信息不一致，请提高警惕，以防受骗，并及时与小白实习官方取得联系。

                    <br/>完成小白测评让企业关注<br/>
                    <a href="/test/rar/index?rar_ver=dcb">去看看</a>

                </div>
                <div class="sty--modal--btn">
                    <span data-style="active" class="sty--modal--close" id="suc_close">确认</span>
                </div>
            </div>
        </div> -->
    </div>
</div>
<!-- <script>
    var login_sdtoken = "djFFl361IwsfqhVYiqUDvvySO3MBsmaI";
</script> -->
<!-- <script>

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

</script> -->


<script>
    window.is_job_details = true;
</script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery.datetimepicker.js?v=6e660303a25f412c43b9122a97f9cf85"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/citypicker/city-data.js?v=6eb5b0aea190eb1eb98b53fffd23a99b"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/citypicker/hzw-city-picker.min.js?v=cd383e6f96dfd4bdd6c625ce6884bcea"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/job_details.js?v=f526281df1749b6aa05b379a74e78400"></script>
<script src="https://api.map.baidu.com/api?v=3.0&ak=Z1lOgcNM2qhs2j7dthuLTVyuvX3R6lz8"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/jq.modal/jq.modal.js?v=1d1b22faddb4cd5168ebabc365d749f9"></script>

<!-- <script>
    var is_login = true,
        flag = "user",
        intern_uuid = "DVQAYY3VOXV2UWGAX8TTKKEAU6WF9JOB",
        checkstatus = "None",
        checkinfo = "None";

    var newJobListen = 'https://xbimg.xiaobaishixi.com/static/nmain/img/new-job-listen.png?v=3b943001c3b63414dd06a1b62e988d19',
        freeIcon = 'https://xbimg.xiaobaishixi.com/static/nmain/img/new-job-free.png?v=1619ab3a34923082b4bc84dc037b1101',
        arrow = 'https://xbimg.xiaobaishixi.com/static/nmain/img/new-job-right.png?v=e5a39aa82646cd7d1cd892edd81cb699';
    $(".job_more .share").on("click", function () {
        var $share_icons = $(this).find(".job_det_share");
        if ($share_icons.hasClass("job_det_share_show")) {
            $share_icons.removeClass("job_det_share_show");
        } else {
            $share_icons.addClass("job_det_share_show");
        }
    })
    var $p = $(".con-com_introduce");
    $p.append($('<div id="mapBox" class="mapBoxCss"></div>'));
    $("#mapBox").addClass("mapBoxCss_show");
    var map = new BMap.Map("mapBox");
    //控件添加
    var point = new BMap.Point(116.331398, 39.897445);//初始化坐标点
    map.centerAndZoom(point, 15);
    map.enableScrollWheelZoom(true);//允许缩放
    var gc = new BMap.Geocoder();//地址定位、地址解析
    var local = new BMap.LocalSearch(map, {
        renderOptions: {map: map}
    });
    var address = $.trim($(".com_position").text());
    var city = $(".job_position").text();
    map.setCurrentCity(city);
    map.setCenter(address);
    map.setZoom(15);
    gc.getPoint(address, function (point) {
        if (point) {
            map.centerAndZoom(point, 15);
            map.addOverlay(new BMap.Marker(point));
        }
    }, city);
</script>
 -->
</body>
</html>