<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>小白实习网-更全面的互联网实习招聘平台</title>


<meta name="description"
	content="小白实习网更全面的互联网实习招聘平台,汇聚全国500强各行各业最新实习招聘信息,互联网大数据精准匹配为应届实习生找到一份满意的实习工作,小白实习网给你以后工作人生第一份职位,实习之旅,小白陪你.">


<meta name="keywords"
	content="实习生招聘,实习生派遣,应届生实习招聘,应届毕业生招聘,应届生实习,毕业生实习,实习公司,实习网站,实习转正,毕业转正,实习工作,毕业实习,应届实习">


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="Robots" content="all">
<meta name="applicable" concent="pc">
<meta name="mobile-agent"
	content="format=html5;url=http://wap.xiaobaishixi.com/">
<link rel="icon"
	href="https://xbimg.xiaobaishixi.com/static/img/favicon.ico?v=1b430f2ce85d97965ed5f59ecdf6ed80"
	type="image/x-icon" />
<link rel="Shortcut Icon"
	href="https://xbimg.xiaobaishixi.com/static/img/favicon.ico?v=1b430f2ce85d97965ed5f59ecdf6ed80"
	type="image/x-icon">
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/css/style.css?v=c765fd25d13a7df4f2ae81e2232a3f0b" />
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/nmain/css/n_base.css?v=cd01560d69373b9cb4b8c06e045303ea" />
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/nmain/css/register_index.css?v=986caf6accfd2f74ab2429c87a5ede5b" />
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

.footer-info a:hover, .banner-xbs-title a>span:hover {
	text-decoration: underline;
}

.footer iframe {
	vertical-align: middle;
}

.new_xbs {
	vertical-align: middle;
	margin-bottom: 20px;
	display: inline-block;
	margin-left: -3px;
}
</style>

<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/css/trainee_center.css?v=69fccc7b3e010372fb19cdf61949dca7" />
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/css/talk_module.css?v=b12198902038820216d2aba7fd630fe0" />
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/css/croppic.css?v=87c5f0e5b27b6951bfea5809e09bd705" />
<link rel="stylesheet" type="text/css"
	href="https://xbimg.xiaobaishixi.com/static/css/jquery.datetimepicker.css?v=22baa8aa2e0e17c6f0aacea433dc4737" />
<link rel="stylesheet" type="text/css"
	href="https://xbimg.xiaobaishixi.com/static/css/hzw-city-picker.css?v=e1b72704981131e49cdd3a1b4ff8f5ad" />
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/css/pagebar.css?v=0e0dbd739accd541042ac6633e846418">
<link rel="stylesheet"
	href="https://xbimg.xiaobaishixi.com/static/nmain/css/my.css?v=f373e7c1ebc7c7b4d93ed0ca1f51f16a">
<style>
.center-header .header_con .cen_resume_list .cen_resume .resume_shape .shape:after
	{
	background-image:
		url(https://xbimg.xiaobaishixi.com/static/nmain/img/center_resume_last.png?v=16b218b98c56c65ed04326ea02fcde8b);
}

#croppic, #cropContainerHeaderButton {
	width: 76px;
	height: 76px;
	position: absolute;
	margin: 0;
	left: 0;
	top: 0;
	padding: 0;
}

#croppic {
	top: -22px;
	z-index: 3;
}

#cropContainerHeaderButton {
	bottom: 0;
	z-index: 4;
	cursor: pointer;
}

.cropImgWrapper {
	width: 76px !important;
	height: 76px !important;
	border-radius: 50% !important;
}

#wait_up {
	border-radius: 50%;
	overflow: hidden;
}

.cropControls {
	width: 140px;
	top: 135px;
	left: -20px;
}

.dialogue_hr {
	top: 50% !important;
	position: fixed !important;
	/*-webkit-transform: translateY(-50%);*/
	/*-moz-transform: translateY(-50%);*/
	/*-ms-transform: translateY(-50%);*/
	/*transform: translateY(-50%);*/
}

.load_res_de {
	top: 5% !important;
}

.hzw-city-picker:before, .hzw-city-picker:after {
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

.resume_chinese:hover span, .resume_english:hover span {
	box-shadow: 0 0 5px 0px #ccc;
}

.my_collect {
	background-color: #ffd000;
	color: #333;
	padding: 7px;
	border-radius: 3px;
	position: absolute;
	right: 15px;
	bottom: 0;
}

.header_opt span {
	color: #ff383d
}
</style>


<script>
	!function(g, d, t, e, v, n, s) {
		if (g.gdt)
			return;
		v = g.gdt = function() {
			v.tk ? v.tk.apply(v, arguments) : v.queue.push(arguments)
		};
		v.queue = [];
		n = d.createElement(t);
		n.async = !0;
		n.src = e;
		s = d.getElementsByTagName(t)[0];
		s.parentNode.insertBefore(n, s);
	}
			(window, document, 'script',
					'//qzonestyle.gtimg.cn/qzone/biz/gdt/dmp/user-action/gdtevent.min.js');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://a.gdt.qq.com/pixel?user_action_set_id=1106796001&action_type=PAGE_VIEW&noscript=1" />
</noscript>


<script>
	(function(root) {
		root._tt_config = true;
		var ta = document.createElement('script');
		ta.type = 'text/javascript';
		ta.async = true;
		ta.src = document.location.protocol
				+ '//'
				+ 's3.pstatp.com/bytecom/resource/track_log/src/toutiao-track-log.js';
		ta.onerror = function() {
			var request = new XMLHttpRequest();
			var web_url = window.encodeURIComponent(window.location.href);
			var js_url = ta.src;
			var url = '//ad.toutiao.com/link_monitor/cdn_failed?web_url='
					+ web_url + '&js_url=' + js_url
					+ '&convert_id=1599514697230388';
			request.open('GET', url, true);
			request.send(null);
		}
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ta, s);
	})(window);
</script>


<script type="text/javascript">
	window._agl = window._agl || [];
	(function() {
		_agl.push([ 'production', '_f7L2XwGXjyszb4d1e2oxPybgD' ]);
		(function() {
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
	<!-- <div class="modal-shadow">
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
</div> -->
	<div class="wrap">
		<div class="header">
			<div class="container">

				<h1>小白实习</h1>

				<a href="/"> <img
					src="https://xbimg.xiaobaishixi.com/static/nmain/img/logo.png?v=a8619bf9f29571b70eaa6914d16d0ac6"
					alt="小白实习 - 中国领先的实习招聘平台" class="logo-img">

				</a>
				<ul class="nav">
					<li class="city-address" style="opacity: 0"><span></span></li>
					<li><a href="/">首页</a></li>
					<li><a
						href="${pageContext.request.contextPath}/recruit?k=企业招聘&p=1">企业招聘</a>
					</li>
					<li><a
						href="${pageContext.request.contextPath}/recruit?k=校园招聘&p=1">校园招聘</a>
					</li>
					<li><a href="${pageContext.request.contextPath}/preach/search">个人中心</a>
					</li>





					<li style="padding-right: 0"><a
						href="/article/station?category=new" style="display: inline-block">论坛</a><img
						src="https://xbimg.xiaobaishixi.com/static/img/new_xbs.png?v=3f0aeac1458a45545b7c62bc00329335"
						class="new_xbs" /></li>






				</ul>

				<div class="logined">
					<a href="/personnel/messages">
						<div class="msg_box">
							<img
								src="https://xbimg.xiaobaishixi.com/static/nmain/img/msg_icon.png?v=f54bf38e1379b6cffb91e548704f0806"
								alt="">

						</div>
					</a>

					<div class="mine"
						style="background-image: url(https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png)"></div>

					<div class="mine_box">
						<div class="mine_jump">

							<a href="/my" rel="nofollow">个人中心</a> <a
								href="/usr/accountsetting/mod">账号设置<span class="onlysso"></span></a>

							<a id="logout-btn">退出</a>
						</div>
					</div>
				</div>

			</div>
			<div class="sub-header"></div>
		</div>

		<div class="center-box">
			<div class="center-banner">
				<div class="center-header">
					<div class="header_people">
						<div class="header_img">
							<img
								src="https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png"
								alt="" class="people_img">
							<div id="croppic"></div>
							<span class="btn" id="cropContainerHeaderButton"></span>
						</div>
						<p class="header_people_name">fff</p>
						<p class="header_people_msg"></p>
						<div class="header_opt">
							<a href="my/collect">
								<div>
									职位收藏<span>(1)</span>
								</div>
							</a> <a href="my/collect?t=com">
								<div>
									公司收藏<span>(0)</span>
								</div>
							</a>
						</div>
					</div>
					<div class="header_con">
						<div class="people_msg">
							<span style="vertical-align: middle">心成长的高度，就是将来的成就</span> <img
								src="https://xbimg.xiaobaishixi.com/static/img/rar/test_wait_pc.png?v=a9e1f98296760029d6e4cf81cffed66b"
								alt=""> <a href="/test/rar/index?rar_ver=dcb"
								class="testBtn hoverBtn">立即测评</a>


						</div>
						<div class="resume_msg">
							<div class="cen_resume_list">

								<a href="${pageContext.request.contextPath}/preach/search/resume">
									<div>
										<div>
											<svg id="resume0_svg" xmlns="http://www.w3.org/2000/svg">
<circle class="circle" cx="50%" cy="50%" r="30" stroke-width="3"
													stroke="#ebebeb"></circle>
<circle class="circle1" cx="50%" cy="50%" r="30" stroke-width="3"
													stroke="#ffd000"></circle>
</svg>
											<span class="resume_score">75%</span>
											<p class="resume_footer" style="font-size: 12px">简历完整度</p>
										</div>
										<div class="cen_resume" data-stype="online">
											<p class="name">简历</p>
											<p class="info1">Java</p>
											<p class="info2">成都 丨 5天/周 丨 1个月 丨 2019-04-21可入职</p>
										</div>
										<img
											src="https://xbimg.xiaobaishixi.com/static/nmain/img/del_resume_btn.png?v=d9c2e7ec0b7a4f52bb9b68ed94318e26"
											class="close_resume"
											data-resid="VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES">
									</div>
								</a> <a
									href="/personnel/modify/onresume/ESM8KX94OUYS3YZXJJNXZAR6HIMZQRES">
									<div>
										<div>
											<svg id="resume1_svg" xmlns="http://www.w3.org/2000/svg">
<circle class="circle" cx="50%" cy="50%" r="30" stroke-width="3"
													stroke="#ebebeb"></circle>
<circle class="circle1" cx="50%" cy="50%" r="30" stroke-width="3"
													stroke="#ffd000"></circle>
</svg>
											<span class="resume_score">50%</span>
											<p class="resume_footer" style="font-size: 12px">简历完整度</p>
										</div>
										<div class="cen_resume" data-stype="online">
											<p class="name">我的简历</p>
											<p class="info1">-</p>
											<p class="info2">- 丨 -天/周 丨 -个月 丨 -可入职</p>
										</div>
										<img
											src="https://xbimg.xiaobaishixi.com/static/nmain/img/del_resume_btn.png?v=d9c2e7ec0b7a4f52bb9b68ed94318e26"
											class="close_resume"
											data-resid="ESM8KX94OUYS3YZXJJNXZAR6HIMZQRES">
									</div>
								</a>


							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="center-content">
				<img
					src="https://xbimg.xiaobaishixi.com/static/img/page_back.png?v=4af87952a3aee54023e949c8efec5d2b"
					alt="">
				<div class="con_til">
					<span class="til-name">已投递简历状态</span><span class="til_num">(0)</span>
				</div>
				<div class="fun_model">
					<div class="fun_model_feedback">
						<div class="back_nav">
							<ul>
								<li class="active back_item" data-back="">全部</li>
								<li class="back_item" data-back="delivered">投递成功</li>
								<li class="back_item" data-back="checked">被查看</li>
								<li class="back_item" data-back="sub">初步筛选</li>
								<li class="back_item" data-back="notify">通知面试</li>
								<li class="back_item" data-back="reject">不合适</li>
							</ul>
							<span class="blue_line"></span>
						</div>
						<div class="back_model"></div>
					</div>
				</div>
			</div>
		</div>
		<div id="addResume" class="popup">
			<div class="popup_head">请选择简历创建方式</div>
			<div class="popup_close">×</div>
			<div class="popup_main">
				<div class="btn_box">
					<a class="resume_resume_btn fl">在线简历</a> <a
						class="resume_resume_btn fr resume_hover_btn">上传简历</a> <input
						type="file" style="display: none" id="attachResume">
				</div>
				<p class="tips">注：上传简历会将你上传的简历附件解析为你的在线简历</p>
			</div>
		</div>
		<div class="dialogue_hr"></div>
		<div id="noticeRecord" class="popup">
			<div class="popup_head">面试体验</div>
			<div class="popup_close">×</div>
			<div class="popup_main">
				<form action="" id="noticeRecordForm">
					<ul class="interview_result">
						<li><input name="stype" id="cope_off" type="radio" value="1" />
							<label for="cope_off">已收到offer</label></li>
						<li><input name="stype" id="not_off" type="radio" value="0" />
							<label for="not_off">未收到offer</label></li>
					</ul>
					<table class="recort_content">
						<tr>
							<td width="80">面试评分：</td>
							<td><input type="hidden" name="score" value="0" />
								<ul class="star_list">
									<li data-v="1"></li>
									<li data-v="2"></li>
									<li data-v="3"></li>
									<li data-v="4"></li>
									<li data-v="5"></li>
								</ul></td>
						</tr>
						<tr>
							<td width="80">面试短评：</td>
							<td class="short_box"><input id="shortevalu" type="text"
								name="short_evaluate" class="borderbox shortdesc" maxlength="15"
								placeholder="15字以内对面试的简单描述哦">
								<ul class="short_down">
									<li>面试官很nice</li>
									<li>公司环境不错</li>
									<li>公司妹子很多</li>
									<li>公司比较垃圾</li>
									<li>面试官不认真</li>
									<li>面试流程有问题</li>
								</ul></td>
						</tr>
						<tr>
							<td width="80" class="eva_con">面试经历：</td>
							<td><textarea id="evaluate_content"
									class="borderbox content_box" name="cont"
									placeholder="记录下自己的面试经历"></textarea></td>
						</tr>
						<input type="hidden" name="deliver_id" class="uuid_text">
					</table>
				</form>
				<a href="javascript:;" class="popup_cancel popup_btn">取消</a> <a
					href="javascript:;" class="popup_btn send_popup">发送</a>
			</div>
		</div>
		<div class="load_res_de"></div>
		<div class="join_interview">
			<div class="title">
				<p>请选择变更面试的日期</p>
				<img class="close_interview"
					src="https://xbimg.xiaobaishixi.com/static/img/close.png?v=43ca279e203e75e1d574a03a9acb5e42"
					alt="" />
			</div>
			<input type="hidden" class="guid_join" value="" />
			<div class="supplement">
				面试日期：<input type="text" class="datetimepicker" id="delay_datetime"><br>
				变更理由：
				<textarea class="suibianba" id="delay_content" cols="30" rows="5"
					maxlength="200" placeholder="请输入变更理由，200字以内"></textarea>
			</div>
			<div class="btn_yanqi">
				<span class="join_int_go">确定</span> <span class="join_int_no">取消</span>
			</div>
		</div>

		<div class="footer">
			<div class="footer-div">
				<div class="footer-info">
					<p>
						<span>友情链接:</span> <a href="https://www.xiaobaishixi.com/"
							target="_blank">小白实习</a> <a href="https://www.51tuijian.com/"
							target="_blank">51推荐</a> <a href="http://www.vastsea.com/"
							target="_blank">大瀚人力资源</a> <a href="/service" target="_blank">小白实习服务条款</a>
						<a href="/helpCenter" target="_blank">帮助中心</a>
					</p>
					<p>
						<span>我们:</span> <a href="/about" target="_blank">关于我们</a> <span>客服邮箱:service@xiaobaishixi.com&nbsp;&nbsp;&nbsp;&nbsp;business@xiaobaishixi.com</span>
					</p>
					<p>
						<span><a style="color: #999" target="_blank"
							href="http://www.beian.miit.gov.cn">蜀ICP备18005916号-4</a></span> <span>©2019
							小白实习</span> <a
							href="https://webscan.360.cn/index/checkwebsite/url/www.xiaobaishixi.com"
							style="border: 0; margin-right: 0; width: 70px; display: inline-block;">

							<img border="0"
							style="display: inline-block; width: 100%; vertical-align: middle;" />
						</a> <a target="_blank"
							href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=51019002001900"
							style="text-decoration: none"> <img
							src="https://xbimg.xiaobaishixi.com/static/img/filing.png?v=d0289dc0a46fc5b15b3363ffa78cf6c7">
							<span>川公网安备 51019002001900号</span>
						</a>
					</p>
				</div>
				<div class="footer-code">
					<div>
						<p>
							<img
								src="https://xbimg.xiaobaishixi.com/static/nmain/img/wx-logo.png?v=17f2cad9c8ded30043ae2954435d8e6e"
								alt=""><span>微信公众号</span>
						</p>
						<img
							src="https://xbimg.xiaobaishixi.com/static/nmain/img/wx-code.png?v=87c947309f6a8c4fc4447d21ca6b9fe9" />
					</div>
					<div>
						<p>
							<img
								src="https://xbimg.xiaobaishixi.com/static/nmain/img/weibo-logo.png?v=494c6e1f2966589e10bd1fb24df3319c"
								alt=""><span>官方微博</span>
						</p>
						<img
							src="https://xbimg.xiaobaishixi.com/static/nmain/img/weibo-code.png?v=12ef3564f6a2620dd76ce0a49e3d486e" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--反馈，回头部等-->
	<div id="mina_qr">
		<div class="img-show">
			<img
				src="https://xbimg.xiaobaishixi.com/static/img/mina_qr.jpg?v=067d1f35b06d85b35b3625d1c8a4e701"
				alt="">
		</div>
		<span>小程序</span>
	</div>
	<div id="feedback">
		<span>用户反馈</span>
	</div>
	<div id="back_top">
		<span>返回顶部</span>
	</div>
	<div id="feedback-box" style="display: none;">
		<form id="advice-form" class="feedback-floor"
			onsubmit="return addAdvice()">
			<div class="feedback-box fixed" style="display: block;">
				<div class="feedback-title">给我们留言</div>
				<span class="feedback-close" onclick="feedclose()"></span>
				<div class="feedback-textare">
					<textarea id="textare" name="content"
						placeholder="你在使用小白实习的过程中有什么疑问或建议,告诉我们吧!(限200字内)"
						class="textarea-feedback"></textarea>
				</div>
				<div class="feedback-upload">
					<div class="upload-img">
						<span><img
							src="https://xbimg.xiaobaishixi.com/static/nmain\img\upload_logo.png"
							alt="上传图片">添加图片</span> <input type="file" name="adviceimg"
							id="upload-advice">
					</div>
					<div class="upload-right">（选填）可上传3个文件，每个文件大小不超过2M。格式必须为jpg，png和jpeg</div>
				</div>
				<div class="add-img" style="display: block"></div>
				<input class="feedback-input" type="text"
					placeholder="请留下邮箱方便我们为您解决问题" name="email">
				<button class="feedback-send" id="feedback-send" disabled="disabled">发&nbsp;送</button>
				<span id="feed-error"></span>
			</div>
		</form>
	</div>
	<script>
		var login_sdtoken = "KBJHV6Ut0FoyaDmQtoG8dRXnJvmBFVy1";
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?ea2fad5faae27be510a32fa67d2e782d";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();

		(function() {
			var bp = document.createElement('script');
			var curProtocol = window.location.protocol.split(':')[0];
			if (curProtocol === 'https') {
				bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
			} else {
				bp.src = 'http://push.zhanzhang.baidu.com/push.js';
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s);
		})();

		(function(b, a, e, h, f, c, g, s) {
			b[h] = b[h] || function() {
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
	<script
		src="https://xbimg.xiaobaishixi.com/static/nmain/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/form/form.js?v=ed1a03ddb5d592ef6eabd53684be03d6"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/layer/layer.js?v=91b08e09ce3849b9f5f894670d83e9a9"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/nmain/js/main_base.js?v=269de1a0535ff26b21cec2d24dbc329b"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/jq.toast.js?v=75acd72cdf8849053ce4c1228c086b3b"></script>

	<script>
		$("#shade").remove();
		var item = '', maxLength = '2', sdtoken = 'KBJHV6Ut0FoyaDmQtoG8dRXnJvmBFVy1';

		var grouped_resume = [
				[
						"ZVVRHSLOZS9F6IP2CR14FJBJQC2NIGRP",
						{
							"default" : true,
							"chinese" : {
								"status" : "normal",
								"major" : "\u8f6f\u4ef6\u5de5\u7a0b",
								"tel" : "15002344940",
								"resume_tpl_uuid" : "tpl_dsfcvd6kio09",
								"summer" : null,
								"exp_info" : [],
								"build_time" : "2019-04-21 14:29:41",
								"major_class" : "\u8ba1\u7b97\u673a\u79d1\u5b66\u4e0e\u6280\u672f\u7c7b",
								"resume_url" : null,
								"check_status" : "uncheck",
								"parser_data" : null,
								"lan_type" : "chinese",
								"id" : 433586,
								"city" : "\u6210\u90fd",
								"uuid" : "VGDO7PLHJUGOGM5PNSGZEIIHTETIFRES",
								"head_url" : "F550B44393EEB54724C71AF5E552614C",
								"major_spec" : "\u8f6f\u4ef6\u5de5\u7a0b",
								"tags" : "",
								"graduate_year" : 2027,
								"month_num" : 1,
								"score" : 75,
								"product_info" : [],
								"email" : "2342342@qq.com",
								"intern_type" : null,
								"update_time" : "2019-05-01 13:57:06",
								"description" : "",
								"degree" : "\u672c\u79d1",
								"attach_info" : [],
								"skill_info" : [],
								"born_city" : "\u6210\u90fd",
								"honor_info" : [],
								"resume_ip" : "222.182.59.66",
								"group_uuid" : "ZVVRHSLOZS9F6IP2CR14FJBJQC2NIGRP",
								"is_default" : true,
								"job" : "Java",
								"practice_info" : [],
								"is_public" : true,
								"major_subject" : "\u5de5\u5b66",
								"salary" : 100,
								"school" : "\u91cd\u5e86\u79d1\u6280\u5b66\u9662",
								"edu_info" : [ {
									"city" : "\u5168\u56fd",
									"major" : "\u8f6f\u4ef6\u5de5\u7a0b",
									"degree" : "\u672c\u79d1",
									"ranking" : "\u524d10%",
									"end_year" : "2027",
									"begin_year" : "2019",
									"oversea" : false,
									"school" : "\u91cd\u5e86\u79d1\u6280\u5b66\u9662",
									"course" : "java\r\n",
									"major_class" : "\u8ba1\u7b97\u673a\u79d1\u5b66\u4e0e\u6280\u672f\u7c7b",
									"major_spec" : "\u8f6f\u4ef6\u5de5\u7a0b",
									"major_subject" : "\u5de5\u5b66",
									"honor" : "\u65e0"
								} ],
								"name" : "\u7b80\u5386",
								"project_info" : [],
								"gender" : 1,
								"months" : {
									"end_year" : "2019",
									"begin_year" : "2019",
									"begin_month" : "04",
									"end_month" : "04"
								},
								"real_name" : "fff",
								"report_way" : "2019-04-21",
								"birthday" : "1987-03-01 00:00:00",
								"update_num" : 1,
								"dayperweek" : 5,
								"job_category" : null,
								"country" : "\u4e2d\u56fd",
								"user_uuid" : "5R0G3SQJZQDQMT5SPD6A8JU5RKC3RUSR",
								"stype" : "online"
							},
							"english" : null
						} ],
				[
						"OSPBSSEBFUQWE7VJLNT1YJFUBLF5RGRP",
						{
							"chinese" : {
								"status" : "normal",
								"major" : "\u8f6f\u4ef6\u5de5\u7a0b",
								"tel" : "15002344940",
								"resume_tpl_uuid" : "tpl_dsfcvd6kio09",
								"summer" : null,
								"exp_info" : [],
								"build_time" : "2019-05-19 21:29:07",
								"major_class" : "\u8ba1\u7b97\u673a\u79d1\u5b66\u4e0e\u6280\u672f\u7c7b",
								"resume_url" : null,
								"check_status" : "uncheck",
								"parser_data" : null,
								"lan_type" : "chinese",
								"id" : 435159,
								"city" : null,
								"uuid" : "ESM8KX94OUYS3YZXJJNXZAR6HIMZQRES",
								"head_url" : "F550B44393EEB54724C71AF5E552614C",
								"major_spec" : "\u8f6f\u4ef6\u5de5\u7a0b",
								"tags" : null,
								"graduate_year" : 2027,
								"month_num" : null,
								"score" : 50,
								"product_info" : [],
								"email" : "2342342@qq.com",
								"intern_type" : null,
								"update_time" : "2019-05-19 21:29:07",
								"description" : null,
								"degree" : "\u672c\u79d1",
								"attach_info" : [],
								"skill_info" : [],
								"born_city" : "\u6210\u90fd",
								"honor_info" : [],
								"resume_ip" : "223.104.251.43",
								"group_uuid" : "OSPBSSEBFUQWE7VJLNT1YJFUBLF5RGRP",
								"is_default" : false,
								"job" : null,
								"practice_info" : [],
								"is_public" : true,
								"major_subject" : "\u5de5\u5b66",
								"salary" : null,
								"school" : "\u91cd\u5e86\u79d1\u6280\u5b66\u9662",
								"edu_info" : [],
								"name" : "\u6211\u7684\u7b80\u5386",
								"project_info" : [],
								"gender" : 1,
								"months" : null,
								"real_name" : "fff",
								"report_way" : null,
								"birthday" : "1987-03-01 00:00:00",
								"update_num" : 1,
								"dayperweek" : null,
								"job_category" : null,
								"country" : "\u4e2d\u56fd",
								"user_uuid" : "5R0G3SQJZQDQMT5SPD6A8JU5RKC3RUSR",
								"stype" : "online"
							},
							"english" : null
						} ] ]
		var resume_score = grouped_resume[0][1].chinese.score
		var resume_score1 = grouped_resume[1] === undefined ? ''
				: grouped_resume[1][1].chinese.score
		console.log(grouped_resume)
	</script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/upload.js?v=895a328e40df34c96bbe78eed58691dc"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/personnel_center.js?v=c04afa8004b9ca9d145dcd3b0be75a0a"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery.datetimepicker.js?v=6e660303a25f412c43b9122a97f9cf85"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/citypicker/city-data.js?v=6eb5b0aea190eb1eb98b53fffd23a99b"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/citypicker/hzw-city-picker.min.js?v=cd383e6f96dfd4bdd6c625ce6884bcea"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery.mousewheel.min.js?v=26138bdd0a7ac76e564cd96e95b1da44"></script>
	<script
		src="https://xbimg.xiaobaishixi.com/static/js/ref/croppic.min.js?v=f88b27f1b65bdbd1ac51e7922cf2d66a"></script>
	<script>
		function onUploadFinish(success, fileuuid, fileurl, msg) {
			$("#cropContainerHeaderButton").show();
			if (success) {
				$("#coverlayer").hide();
				$.post('/personnel/logo/change?filepath=' + fileuuid, function(
						d) {
					if (d.code == 100) {
						var img = $(".people_img")[0];
						img.src = fileurl;
						img.onload = function() {
							$(".cropControlReset").click();
						};
					} else {
						layer.alert(d.msg);
					}
					location.reload();
				}, 'json');
			} else {
				layer.alert(msg, function() {
					window.location.reload()
				});
			}
		}
		$("body").on("click", "#pagebar li", function() {
			if ($(this).hasClass('disabled')) {
				return

			}
			$("body,html").animate({
				scrollTop : 380
			}, 400);
			var page = $(this).data('value');
			var stype = $('.back_nav .active').data('back');
			setTimeout(function() {
				$fun_model.load("/my?" + Math.random(), {
					p : page,
					stype : stype
				});
			}, 400)
		});
		$("body").on("click", ".back_nav .back_item", function() {
			var page = 1;
			var stype = $(this).data('back');
			$fun_model.load("/my?" + Math.random(), {
				p : page,
				stype : stype
			});
		});
		$(".resume_bi").each(
				function() {
					var $width = $(this).data("val");
					$(this).siblings(".resume_shape").find(".shape").css(
							"width", $width * 0.64);
				})
		$shadow.on("click", function() {
			$shadow.removeClass("cen_shade_show");
			$jump_mask.removeClass("cen_jump_show");
		})
	</script>

</body>
</html>