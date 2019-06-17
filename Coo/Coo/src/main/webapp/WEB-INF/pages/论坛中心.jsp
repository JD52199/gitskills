<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">


    <title>论坛中心</title>
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

    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/pagebar.css?v=dd925232edb465270860204478f5dc40">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/xb_speak.css?v=8072f9682a32057d239245a570788220">
    <style>
        .answer-list{
            padding-top: 0;
        }
        .over-list{
            padding-bottom: 20px;
        }
        .q-title,.q-title a{
            margin-top: 0;
        }
        .focus-content .q-title a,.question-content .q-title a{
            line-height: 18px;
        }
        .answer-list .q-title a{
            color: #333333;
            margin-top: 0;
            display: -webkit-box;
            max-width: 100%;
            word-break: break-all;
        }
        .first_p{
            font-size: 14px;
            color: #999999;
            line-height: 30px;
            margin-top: 20px;
            padding-left: 20px;
        }
        .second_p{
            font-size: 14px;
            color: #777777;
            line-height: 30px;
            margin-top: 10px;
            padding-left: 20px;
        }
        .over_p{
            font-size: 14px;
            color: #777777;
            line-height: 30px;
            margin-top: 10px;
            margin-left: 20px;
            display: inline-block;
            padding: 0 20px;
            background-color: #EEEEEE;
        }
        .nav-item a{
            display: inline-block;
            width: 100%;
        }
        .con_left .icons{
            border: 0;
        }
        .name{
            cursor: inherit;
        }
        .name.view{
            cursor: pointer;
        }
        .xbs_li{
            cursor: pointer;
        }
        .delete{
            width: 17px;
            height: 20px;
            cursor: pointer;
            padding-left: 16px;
            position: relative;
            left: 0;
            background: url("https://xbimg.xiaobaishixi.com/static/nmain/img/xiaobaishuo/delete.png?v=41cab1b017215f71b5d914f1faf8f3d5") no-repeat right;
            display: inline-block;
            opacity: 0;
            transition: all .2s linear;
        }
        .delete:hover{
            background: url("https://xbimg.xiaobaishixi.com/static/nmain/img/xiaobaishuo/deleted.png?v=c53ef90ec435bb64921ce866cd12ed76") no-repeat right;
        }
        .answer-content .delete{
            vertical-align: middle;
        }
        .wrap{
            width: 100%;
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
    <div class="container" style="margin-top: -15px;">
        <div class="con_content clear">
            <div class="con_left fl" style="width: 100%;">
                <ul class="nav-list" >
                    <li class="nav-item active"><div class="xbs_li" data-href="论坛中心.html">我的提问</div></li>
                    <li class="nav-item topic "><div class="xbs_li" data-href="我的回答.html">我的回答</div></li>
                    <li class="nav-item topic "><div class="xbs_li" data-href="我的评论.html">我的评论</div></li>
                    <li class="nav-item topic "><div class="xbs_li" data-href="我的关注.html">我的关注</div></li>
                </ul>
                <div class="content">


                    <ul class="question-content">


                        <li class="question-list">
                            <p class="q_status">
                                审核中
                            </p>
                            <p class="q-title"><a href="/question/SQWMJPQ7Z7GGWY43S1GSEL4BDCGUZXTH?points_name=职业选择" target="_blank" class="one_row">选择职业真的很重要</a><i class="delete" myuuid="SQWMJPQ7Z7GGWY43S1GSEL4BDCGUZXTH" atype="themes"></i></p>
                            <p class="q-desc two_row">
                            </p>
                            <div class="icons">
                                <span class="name time">2019-04-26</span>
                                <span class="name view" data-href="/question/SQWMJPQ7Z7GGWY43S1GSEL4BDCGUZXTH?points_name=职业选择">0 回答</span>
                                <span class="name like">0 关注</span>
                            </div>
                        </li>
                    </ul>
                    <div class="load_more" id="themes">查看更多</div>


                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var login_sdtoken = "S3Nr2KmJyO1WIlHRisGVa6hLen5oUsOt";
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

<script src="https://xbimg.xiaobaishixi.com/static/js/ref/jquery.timeago.js?v=25addbc554d03dddb4c6c9bcf9ff5690"></script>
<script src="https://xbimg.xiaobaishixi.com/static/js/utils.js?v=a461fba80aa0f40ece15c3179c01b6f4"></script>
<script>
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
    //友好时间处理
    $(".timeago").timeago();
    //话题列表点击
    $(".topic_div").on("click",function () {
        $(this).fadeOut(400)
        $(".question_div").fadeIn(400)
    });
    //跳转我的小白说
    $(".xbs_li").on("click",function () {
        var flag = "user";
        if ( flag=='user' || flag=='company'){
            location.href=$(this).data("href")
        }else {
            $('.modal-shadow').show();
        }
    });
    $("body")
        .on("click",".view",function () {
            window.open(addUrlParam('', "#comments",$(this).data("href")));
        })
        .on("mouseover",".question-list",function () {
            $(this).css("background-color","#eee");
            $(this).find(".readmore").css("background-color","#eee");
            $(this).find(".delete").css("opacity","1");
        })
        .on("mouseout",".question-list",function () {
            $(this).css("background-color","#fff");
            $(this).find(".readmore").css("background-color","#fff");
            $(this).find(".delete").css("opacity","0");
        })
        .on("click",".delete",function () {
            $.post("/discuss/del",{
                uuid:$(this).attr("myuuid"),
                atype:$(this).attr("atype")
            },function (data) {
                console.log(data)
                if(data.code==100){
                    layer.msg("删除成功",{
                        time: 1000
                    },function () {
                        location.reload()
                    })
                }else {
                    layer.msg(data.msg);
                }
            },'json')
        })
    ;
    var flag_submit = true;
    //提问
    $(".tiwen").on("click",function () {
        flag_submit = true;
        $(".shade_in").css("max-height", (document.body.clientHeight - 65) + "px");
        $(".shade").show().next().show().animate({
            opacity: "1"
        }, 300).prev().animate({
            opacity: ".6"
        }, 300);
        document.body.style.overflow = "hidden";
        $(".shade_in").css({"overflow-y":"scroll"});
    });
    //关闭提问
    $(".shade,.close" +
        "" +
        "" +
        "" +
        "" +
        "" +
        "_shade").on("click",function () {
        $(".shade").animate({
            opacity: "0"
        }, 300).next().animate({
            opacity: "0"
        }, 300, function () {
            $(".shade").hide().next().hide();
        });
        document.body.style.overflow = "auto";
    });
    //所属话题标签
    $(".tag_div span").on("click",function () {
        $(this).toggleClass("active");
        var count = $(".tag_div .active").length;
        if(count>3){
            console.log("最多三条");
            $(this).toggleClass("active");
        }else {
            var count_str = "("+$(".tag_div .active").length+"/3)"
            $(".topic_count").html(count_str);
        }
    });
    //提问提交
    $("#comment-submit").on("click",function () {
        if(!flag_submit){
            layer.msg("提交太频繁,请稍后再试....");
            return
        }
        flag_submit = false;
        var index = layer.load(1, {
            shade: [0.1, '#fff'] //0.1透明度的白色背景
        });
        var tag_active = new Array();
        var question_val = $("#question").val().trim();
        var textarea_val = $(".form_input textarea").val();
        var is_nm = $("#is_nm").prop('checked');
        var flag = "user";
        if(question_val){
            if($(".tag_div .active").length>0){
                for(var i=0;i<$(".tag_div .active").length;i++){
                    tag_active.push($(".tag_div .active").eq(i).text());
                }

                if ( flag=='user' || flag=='company'){
                    $.post("/article/Themes",{
                        points:tag_active.toString(),
                        title:question_val,
                        desc:textarea_val,
                        is_nm:is_nm
                    },function (data) {
                        if(data.code===100){
                            $(".shade").click()
                        }
                    },'json')
                } else {
                    $('.modal-shadow').show();
                }
            }else {
                $(".error-tips").html("请选择所属话题！")
            }
        }else {
            $(".error-tips").html("请输入问题！")
        }
        layer.close(index);
    });
    // 加载更多
    var p = 2;
    var no_more = false;
    $(".load_more").on("click", function () {
        var id_ = $(this).attr("id");
        var obj_ = $(this).prev("ul");
        if (no_more) {
            return
        }
        var index = layer.load(1, {
            shade: [0.1, '#fff'] //0.1透明度的白色背景
        });
        $.post("", {p: p}, function (d) {
            console.log(d)
            if (d.code === 100) {
                layer.close(index);
                p = p + 1;
                var row = d.msg,item = '';
                if (!row.length) {
                    $("#"+id_).text("已加载全部").addClass("no_more");
                    no_more = true;
                    return
                }
                if(id_ == "themes"||id_ == "watcher"){
                    for (var i in row) {
                        if(row[i].status == "destroy"){
                            item += '<li class="question-list over-list"><p class="first_p" style="margin-top: 0">';
                            item += row[i].title+'</p><p class="over_p">该提问已被删除</p></li>';
                        }else {
                            var href_ = "/question/"+row[i].uuid+"?points_name="+row[i].points[0];//跳转地址
                            item += '<li class="question-list"><p class="q-title"><a href='+href_+' target="_blank" class="one_row">';
                            item += row[i].title+'</a></p><p class="q-desc two_row">'+row[i].content ;
                            if(row[i].content.length>100){
                                item +='<a href='+href_+' target="_blank" class="readmore">阅读全文 V</a>'
                            }
                            item +='</p><div class="icons"><span class="name time">';
                            item += row[i].build_time+'</span><span class="name view" data-href='+href_+'>';
                            item += row[i].discuss_num+' 回答</span><span class="name like">';
                            item += row[i].watcher_num+' 关注</span></div></li>';
                        }
                    }
                }else if(id_ == "answer"){
                    for (var i in row) {
                        if(row[i].status == "destroy"){
                            item += '<li class="question-list answer-list over-list"><p class="first_p">';
                            item += row[i].d_build_time+' 回答了</p><p class="over_p">该回答已被删除</p></li>';
                        }else {
                            var href_ = "/question/"+row[i].uuid+"?points_name="+row[i].points[0];//跳转地址
                            item += '<li class="question-list answer-list"><p class="first_p">';
                            item += row[i].d_build_time+' 回答了</p><p class="q-title"><a href='+href_+' target="_blank" class="two_row">';
                            item += row[i].content+'</a></p><p class="q-desc one_row">'+row[i].title;
                            if(row[i].title.length>100){
                                item +='<a href='+href_+' target="_blank" class="readmore">阅读全文 V</a>'
                            }
                            item += '</p> <div class="icons"> <span class="name time">';
                            item += row[i].t_build_time+'</span> <span class="name agree">';
                            item += row[i].agreed_num+' 赞成</span> <span class="name against">';
                            item += row[i].oppose_num+' 反对</span> </div> </li>';
                        }
                    }
                }else if(id_ == "comment"){
                    for (var i in row) {
                        var href_ = "/article/station/"+row[i].uuid;//跳转地址
                        if(row[i].status == "destroy"){
                            item += '<li class="question-list answer-list over-list"><p class="first_p">';
                            item += row[i].d_build_time+' 评论了文章</p><p class="over_p">该评论已被删除</p></li>';
                        }else {
                            item += '<li class="question-list answer-list"><p class="first_p">';
                            item += row[i].d_build_time+' 评论了文章</p><p class="q-title"><a href='+href_+' target="_blank">';
                            item += row[i].content+'</a></p><p class="second_p">';
                            item += row[i].title+'</p></li>';
                        }
                    }
                }
                obj_.append(item);
            }
        }, 'json')
    });
</script>

</body>
</html>