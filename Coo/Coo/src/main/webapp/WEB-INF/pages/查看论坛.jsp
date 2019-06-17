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


    <title>小白实习网-实习资讯小白说</title>


    <meta name="description"
          content="小白实习网更全面的互联网实习招聘平台,汇聚全国500强各行各业最新实习招聘信息,互联网大数据精准匹配为应届实习生找到一份满意的实习工作,小白实习网给你以后工作人生第一份职位,实习之旅,小白陪你.">


    <meta name="keywords" content="实习生招聘,实习生派遣,应届生实习招聘,应届毕业生招聘,应届生实习,毕业生实习,实习公司,实习网站,实习转正,毕业转正,实习工作,毕业实习,应届实习">
    <meta name="author" content="小白实习招聘网">
    <meta property="og:type" content="article"/>
    <meta property="og:image" content="图片地址 "/>
    <meta property="og:release_date" content="发表时间"/>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="Robots" content="all">
    <meta name="applicable" concent="pc">
    <meta name="mobile-agent" content="format=html5;url=http://wap.xiaobaishixi.com/">
    <link rel="icon" href="https://xbimg.xiaobaishixi.com/static/img/favicon.ico?v=1b430f2ce85d97965ed5f59ecdf6ed80" type="image/x-icon"/>
    <link rel="Shortcut Icon" href="https://xbimg.xiaobaishixi.com/static/img/favicon.ico?v=1b430f2ce85d97965ed5f59ecdf6ed80" type="image/x-icon">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/css/style.css?v=c765fd25d13a7df4f2ae81e2232a3f0b"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/n_base.css?v=cd01560d69373b9cb4b8c06e045303ea"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/register_index.css?v=986caf6accfd2f74ab2429c87a5ede5b"/>
  
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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

    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/pagebar.css?v=dd925232edb465270860204478f5dc40">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/xb_speak.css?v=8072f9682a32057d239245a570788220">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/swiper-3.4.1.min.css?v=0176bf1163b6f65f3c8cf11cd367e67c">
    <style>
        .art a{
            display: inline-block;
            width: 100%;
            height: 100%;
        }
        .question-msg p:first-of-type.redText{
            color: #ff0000;
        }
        .xbs_li{
            cursor: pointer;
        }
        .wrap{
            width: 100%;
        }
        .con_left{
            width: 100%;
            margin-top: -15px;
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

<div class="wrap">

    <div class="container">
        <div class="con_content clear">
            <div class="con_left fl">
                <ul class="nav-list">
                    <li class="nav-item active" data-type="new">最新动态</li>
                    <!-- <li class="nav-item topic " data-type="ht">话题</li>
                    <li class="nav-item newest " data-type="">
                        热点
                    </li> -->
                </ul>
                <div class="content">
                <c:forEach  var="notelist" items="${notelist }" >
                    <div class="new-content">
                    <c:if test="${notelist.status=='1' }">
                        <ul class="question-content question_content2">


                            <div class="page-li" my_attr="0" >

                                <li class="question-list">
                                <!--  ${empty user}-->
                                <c:if test="${empty notelist.img }">
                                	<img alt="picture" src="${pageContext.request.contextPath}/images/nologin.jpg"/>
                                </c:if>
                                 <c:if test="${!empty notelist.img }">
                                	<img alt="picture" src="${pageContext.request.contextPath}/upload/${notelist.img}"/>
                                </c:if>
                                    <div class="question-msg">
                                        <p ></p>
                                        <p>${notelist.note_author }</p>
                                    </div>
                                    <input type="hidden" value="${notelist.note_id }">
                                    <p class="q-title one_row"> <a  onclick="x_admin_show('论坛详情','${pageContext.request.contextPath}/company/notedetail?note_id=${notelist.note_id }')"></i>${notelist.note_title }</a></p>
                                 
                                    <div class="icons" my_id="RBBXHFMA9FC5WSLD7YJEJZ29XMRJTDIS">
                                        <span class="name time">${notelist.note_time }</span>
                                       <!--  <span class="name agree  "></span>
                                        <span class="name against  "></span> -->
                                    </div>
                                </li>
                            </c:if>    
                            </div>
                   

                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="shade"></div>
    <div class="shade_in">
        <div class="shade_title">
            <span>提个问题</span>
            <span class="close_shade">X</span>
        </div>
        <form action="">
            <div class="form_input">
                <label for=""><i>*</i>问题</label>
                <input type="text" placeholder="请一句话描述问题、并以问题号结尾" id="question">
            </div>
            <div class="form_input">
                <label for="">问题补充</label>
                <textarea name="" cols="30" rows="10" placeholder="请详细介绍问题，认真的提问才能带来专业的回答哦
建议补充以下信息：
1、问题发生的背景
2、最大的困扰是什么
3、问题相关数据是什么">
</textarea>
            </div>
            <div class="form_input">
                <label for=""><i>*</i>所属话题<br><span class="topic_count">(0/3)</span></label>
                <div class="tag_div">

                    <span class="tag">职业选择</span>

                    <span class="tag">薪酬福利</span>

                    <span class="tag">简历</span>

                    <span class="tag">行业资讯</span>

                    <span class="tag">个人发展</span>

                    <span class="tag">职场生存</span>

                    <span class="tag">面试</span>

                    <span class="tag">校招</span>

                </div>
            </div>
            <div class="form_input">
                <div class="tag_div">
                    <input type="button" value="提交" id="comment-submit">
                    <input type="checkbox" id="is_nm" ><label for="">匿名提交</label>
                </div>
            </div>
            <div class="form_input error">
                <span class="error-tips"></span>
            </div>
        </form>
    </div>
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
    var login_sdtoken = "3mslT2Iueh8PICEXW70NU9IrS0lD8aGb";
</script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery-creatBox.js?v=81f41a859f110de9536733c69a18f82e"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/form/form.js?v=ed1a03ddb5d592ef6eabd53684be03d6"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/layer/layer.js?v=91b08e09ce3849b9f5f894670d83e9a9"></script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/main_base.js?v=269de1a0535ff26b21cec2d24dbc329b"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/jq.toast.js?v=75acd72cdf8849053ce4c1228c086b3b"></script>

<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/swiper-3.4.1.min.js?v=a456bec752b03b8e568b87fe4b0921de"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery.timeago.js?v=25addbc554d03dddb4c6c9bcf9ff5690"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
</body>
</html>