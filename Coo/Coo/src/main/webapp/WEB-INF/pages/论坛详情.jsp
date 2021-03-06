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
    <title>论坛详情</title>
    <meta name="author" content="小白实习招聘网">
    <meta property="og:type" content="article"/>
    <meta property="og:image" content="图片地址 "/>
    <meta property="og:release_date" content="2018-11-23"/>
    <meta http-equiv="Cache-Control" content="max-age=7200" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="Robots" content="all">
    <meta name="applicable" concent="pc">
    <meta name="mobile-agent" content="format=html5;url=http://wap.xiaobaishixi.com/">
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
      .wrap1{
            width: 100%;
            margin-left: 100px;
            margin-top: -60px;
        }
        wrap{
            width: 100%;
        }
    </style>

    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/xb_speak.css?v=8072f9682a32057d239245a570788220">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/pagebar.css?v=dd925232edb465270860204478f5dc40">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/xb_speak_detail.css?v=70058ad7bfb48178a654001ddde36936">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/question_detail.css?v=2d26e3227b27342405b67ae81fcc78dc">


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
    <div class="wrap1">
        <div class="container article_detail_container">
            <div class="con_left fl">
                <div class="article">
                    <div class="article_info_box clear">
                        <div class="fl">
                            <div class="art_icons">
                               <!--  <a href="/article/station?category=ht&points_name=个人发展"><span>个人发展</span></a>

                                <a href="/article/station?category=ht&points_name=职场生存"><span>职场生存</span></a> -->
                            </div>
                        </div>
                    </div>
                    <div class="question-list">
                   
                   <%--  <c:if test="${empty note2.img }">
                    	<img alt="picture" src="${pageContext.request.contextPath}/images/nologin.jpg"/>
                    </c:if>
                    <c:if test="${!empty note2.img }">
                    	<img alt="picture" src="${pageContext.request.contextPath}/upload/${note2.img}"/>
                    </c:if> --%>
                       <img alt="picture" src="${pageContext.request.contextPath}/upload/${note2.img}"/>
                        <div class="question-msg">
                        <input type="hidden" name="note_id" value="${note2.note_id }">
                            <p>${note2.note_author }</p>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                        </div>
                        <p class="q-title">${note2.note_title }</p>
                        <div class="q-desc">
                            <div id="q-desc" contenteditable="plaintext-only">${note2.note_content }</div>

                        </div>
                    </div>
                </div>
                <div class="icons1">
                    <div class="fl">
                        <div class="icons">
                            <span class="name time">${note2.note_time }</span>
                           <!--  <span class="name view">0 回答</span>
                            <span class="name like">1 关注</span> -->
                        </div>
                    </div>
                    <div class="icons2">
                        <div class="icon_btn"><a href="#comment-desc">我来回答</a></div>
                       <!--  <div class="icon_btn">

                         
                        </div>  -->
                      <!--   <span class="icon weib article_link" title="分享到新浪微博" data-stype="sinaWeibo"></span>
                        <span class="icon wechat article_link" title="分享到微信" data-stype="weixinShare"></span> -->
                    </div>
                </div>
                <div class="comments" id="comments">

                    <p class="count"></p>
                    <ul class="comments-content">
                    <c:forEach var="comm" varStatus="c" items="${listcomment }">
                        <li class="comments-list">
                            <img src="https://xbimg.xiaobaishixi.com/static/img/default/default_headpic.png" alt="">
                            <div class="content">
                                <p class="person-msg">
                                    <span>${comm.comment_name }</span>
                                    <span>${comm.comment_time }</span>
                                </p>
                                <p class="comment">${comm.comment_content }</p>
                                <div class="icons" my_id="RBBXHFMA9FC5WSLD7YJEJZ29XMRJTDIS">
                                    <!-- <span class="name agree">0 赞成</span>
                                    <span class="name against ">0 反对</span> -->
                                </div>
                            </div>
                        </li>
                   </c:forEach>
                    </ul>
                    <div id="pagebar" class="pagination">
                        <ul>
                        </ul>

                    </div>
                    <form action="${pageContext.request.contextPath}/company/comment" method="post">
                    <div class="comments-form">
                        <textarea name="comment_content" id="comment-desc" cols="30" rows="10" placeholder="请写下您的回答"></textarea>
                        <input type="hidden" name="comment_time" value="2019-05-13">
                        <input type="hidden" name="comment_name" value="${note2.note_author }">
                        <input type="hidden" name="note_id" value="${note2.note_id }">
                    <!--     <input type="checkbox" id="is_nm" ><label for="">匿名提交</label> -->

                        <div id="comment-submit"><input type="submit" value="提交"></div>
                    </div>
                    </form>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<script>
    var login_sdtoken = "rm9eh1KCoj6iwKVOQm92aIwrFKWOtxi7";
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

<script src="https://xbimg.xiaobaishixi.com/static/js/ref/share.js?v=91ba4bd1637f936fc5c7e2ab0ed26f0e"></script>
<!-- <script>
    $(function () {
        if($('.content img')[0]){
            $('meta[property="og:image"]').attr('content',$('.content img')[0].src);
        }
        window.onscroll = function () {
            var $height = $(window).scrollTop();
            var $subHeader = $(".sub-header");
            if ($height > 56) {
                $subHeader.css("top", 0);
            } else {
                $subHeader.css("top", -76);
            }
        };
//标签
        $(".search_icons .icon").on("click", function () {
            var tag = $.trim($(this).text());
            window.location.href = '/article/station?tag=' + encodeURIComponent(tag);
        });
//阅读更多
        $(".more").on("click", function () {
            $(this).fadeOut(100).parent().css("-webkit-line-clamp","999999");
            $("#q-desc").css({"overflow-y":"auto","height":"auto"})
        });
        var flag_submit = true;
//提交回答
        $("body").on("click",".comments-form #comment-submit",function () {
            if(!flag_submit) {
                layer.msg("提交太频繁,请稍后再试....");
                return
            }
            flag_submit = false;
            var index = layer.load(1, {
                shade: [0.1, '#fff'] //0.1透明度的白色背景
            });
            var comment_desc = $("#comment-desc").val().trim();
            var is_nm = $("#is_nm").prop('checked');
            var q_uuid = 'YJODGU4T7OC2YLFAMKBVJGBPGCR3FXTH';
            var flag = "user";
            if(comment_desc){
                if ( flag=='user' || flag=='company'){
                    var num = parseInt($(".view").text(),10);
                    num++;
                    $.post("/discuss/add",{desc:comment_desc,is_nm:is_nm,q_uuid:q_uuid,atype:'themes'},function (data) {
                        if(data.code===100){
                            layer.msg("提交成功");
                            $(".view,.count").text(num+" 回答");
                            window.location.reload();
                        }else {
                            layer.msg(data.msg);
                        }
                    },'json')
                } else {
//未登录
                    $('.modal-shadow').show();
                    flag_submit = true;
                }
            }else {
                $(".comments-form textarea").addClass("error_t");
            }
            layer.close(index);
        });
        $(".comments-form textarea").on("focus",function () {
            $(this).removeClass("error_t");
            flag_submit = true;
        });
//关注/取消关注
        $(".icon_btn").eq(1).on("click",function () {
            var _that = $(this);
            var flag = "user";
            var t_uuid = 'YJODGU4T7OC2YLFAMKBVJGBPGCR3FXTH';
            if ( flag=='user' || flag=='company'){
                var num = parseInt($(".like").text(),10);
                if(_that.find("span").text() === "关注"){
                    num++;
                    $.post("/themes/watcher/add",{t_uuid:t_uuid},function (data) {
                        console.log(data);
                        if(data.code === 100){
                            _that.find("i").css("background-position","0px -44px");
                            _that.find("span").text("已关注");
                            $(".like").text(num+" 关注")
                        }else {
                            layer.msg(data.msg)
                        }
                    },'json')
                }else {
                    num--;
                    $.post("/themes/watcher/destroy",{t_uuid:t_uuid},function (data) {
                        console.log(data);
                        if(data.code === 100){
                            _that.find("i").css("background-position","-22px -139px");
                            _that.find("span").text("关注");
                            $(".like").text(num+" 关注")
                        }else {
                            layer.msg(data.msg)
                        }
                    },'json')
                }
            }else {
                $('.modal-shadow').show();
            }
        });
//喜欢
        $('.prise').on('click', function () {
            var $num = $(this).next(),
                uuid = $(this).attr('data-val');
            $.post('/article/praise', {uuid: uuid}, function (e) {
                if (e.code != 100) {
                    layer.msg(e.msg);
                }
                else {
                    $num.text(parseInt($num.text()) + 1);
                    $(".prise").addClass("prised");
                    $(".article_prise").addClass("prised");
                    $(".sub-content").find(".heart").addClass("heart_red");
                }
            }, 'json')
        });
//分享
        $(".article_link").on("click", function () {
            var share_type = $(this).attr('data-stype');
            $(this).socialShare(share_type, {
                url: "https://www.xiaobaishixi.com/question/YJODGU4T7OC2YLFAMKBVJGBPGCR3FXTH?points_name=个人发展",
                content: $("#q-desc").text(),
                title: "我学习成绩不好能不能找到工作"
            });
        });

        $(".agree").on("click",function (e) {
            e.stopPropagation();
            var _that = $(this);
            var num = parseInt(_that.text(),10);
            num++;
            $.post("/discuss/agree",{uuid:$(this).parent().attr("my_id"),atype:"agreed_num"},function (data) {
                if(data.code === 100){
                    _that.text(num+" 赞成").addClass("agreed")
                }else {
                    layer.msg(data.msg);
                }
            },'json')
        });

        $(".against").on("click",function (e) {
            e.stopPropagation();
            var _that = $(this);
            var num = parseInt(_that.text(),10);
            num++;
            $.post("/discuss/agree",{uuid:$(this).parent().attr("my_id"),atype:"oppose_num"},function (data) {
                if(data.code === 100){
                    _that.text(num+" 反对").addClass("againsted")
                }else {
                    layer.msg(data.msg);
                }
            },'json')
        });
    })
</script> -->

</body>
</html>