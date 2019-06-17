<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()
					+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name='TTUNION_verify' content='b846c3c2b85efabc496d2a2b8399cd62'>
    <meta name="sogou_site_verification" content="gI1bINaJcL"/>
    <meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a" />
    <meta name="baidu_union_verify" content="99203948fbfbb64534dbe0f030cbe817">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/base1.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/home1.css">
   
    <script type="text/javascript">
	function submit(){
		document.form.formName.submit();
		}
</script>
</head>
<body>

<header class="aui-header">
    <div class="aui-header-box">
        <h1>
            <a href="login.html" class="aui-header-box-logo"></a>
        </h1>
    </div>
</header>

<section class="aui-content">
    <div class="aui-content-box clearfix">
        <div class="aui-content-box-fl">
            <div class="aui-form-header">
                <div class="aui-form-header-item on">用户登录</div>
                <div class="aui-form-header-item">企业登录</div>
                <span class="aui-form-header-san"></span>
            </div>
            <div class="aui-form-content">
                <div class="aui-form-content-item"><!-- ${pageContext.request.contextPath}/Login-->
                    <form action="" method="post" onsubmit="return check()">
                       <span style="color:red;" id="message">${error}</span>
                        <div class="aui-form-list">
                            <input type="text" class="aui-input" name="username" placeholder="请输入手机号/账号" data-required="required" autocomplete="off">
                        </div>
                        <div class="aui-form-list">
                            <input type="password" class="aui-input" name="password" placeholder="请输入密码" data-required="required" autocomplete="off">
                        </div>
                        <input type="hidden" name="btn1" value="1">
                        
				          <label>
				          <input type="checkbox" name="rememberMe" checked="checked"> 记住我
				          </label>
				        
                        <div class="aui-form-btn">
                            <input type="submit" class="aui-btn" value="登&nbsp;录" >
                        </div>
                    </form>
                </div>
                <div class="aui-form-content-item">
                    <form action="" method="post" onsubmit="return check()">
                    <span style="color:red;" id="message">${msg}</span>
                        <div class="aui-form-list">
                            <input type="text" class="aui-input" name="username" placeholder="请输入您的公司账号" data-required="required" autocomplete="off">
                        </div>
                         <input type="hidden" name="btn1" value="0">
                        <div class="aui-form-list">
                            <input type="password" class="aui-input" name="password" placeholder="请输入您的密码" data-required="required" autocomplete="off">
                        </div>
                        <div class="aui-form-pwd clearfix">
                           <input type="hidden" class="aui-input" name="account_type" value=2 >
                        </div>
                        <div class="aui-form-btn">
                            <input type="submit" class="aui-btn" value="登&nbsp;录">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="aui-content-box-fr">
            <div class="aui-content-box-text">
                <h3>还没有帐号:</h3>
                <a href="${pageContext.request.contextPath}/toRegister" class="aui-ll-link">立即注册</a>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){

        /*tab标签切换*/
        function tabs(tabTit,on,tabCon){
            $(tabCon).each(function(){
                $(this).children().eq(0).show();

            });
            $(tabTit).each(function(){
                $(this).children().eq(0).addClass(on);
            });
            $(tabTit).children().click(function(){
                $(this).addClass(on).siblings().removeClass(on);
                var index = $(tabTit).children().index(this);
                $(tabCon).children().eq(index).show().siblings().hide();
            });
        }
        tabs(".aui-form-header","on",".aui-form-content");

    })
</script>

</body>
</html>