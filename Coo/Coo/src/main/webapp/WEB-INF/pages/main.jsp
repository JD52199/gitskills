<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.util.* ,com.test.*" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>招聘网站</title>
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

    <link rel="alternate" media="only screen and (max-width: 750px)" href="http://wap.xiaobaishixi.com/">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/n_main.css?v=2749633e19cbcd0194be1c148ade282c"/>
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/js/jq.modal/jq.modal.css?v=42f21a612a856f640f56127d406991c1">
    <link rel="stylesheet" href="https://xbimg.xiaobaishixi.com/static/nmain/css/parallax.css?v=36d319e83f110fd8b74476a833f6a55c">


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
    <div class="header">
        <div class="container">

            <h1>招聘网站</h1>
            <ul class="nav">

                <li>
                    <a class="active" href="${pageContext.request.contextPath}/">首页</a>
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
                <li style="padding-right: 0"><a href="${pageContext.request.contextPath}/user/viewnote?userName=${username}" style="display: inline-block">论坛</a><img src="https://xbimg.xiaobaishixi.com/static/img/new_xbs.png?v=3f0aeac1458a45545b7c62bc00329335" class="new_xbs"/></li>
           		 
            </ul>
             <div class="links">
             
                <a rel="nofollow" class="student-login">欢迎您：${username }</a>
            </div>
            
            </div>
        <div class="sub-header">
		
		</div>
		</div>

    <div class="top-bar">
        <div class="container">
            <div class="search-bar">
                <div class="search-container">
                    <form onsubmit="return false">
                        <input type="text" name="k" placeholder="请输入期望实习的公司名称或岗位名称~">
                        <input type="submit" value="搜索" class="form--button">
                    </form>
                </div>
                <span></span>
            </div>
        </div>
    </div>
    <div class="mid-bar">
        <div class="container">
            <div class="intern-type">

                <div class="type-item" data-type="IT互联网">
                    <div style="height: 100%;overflow: hidden">
                        <a>IT互联网</a>


                        <a href="/jobs/c-100000?k=%E8%BD%AF%E4%BB%B6&p=1" target="_blank">软件</a>



                        <a href="/jobs/c-100000?k=%E8%BF%90%E8%90%A5&p=1" target="_blank">运营</a>



                        <a href="/jobs/c-100000?k=%E7%A1%AC%E4%BB%B6&p=1" target="_blank">硬件</a>








                    </div>
                    <div class="type-list" data-type="IT互联网">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%BD%AF%E4%BB%B6&p=1&username=${username}" target="_blank">软件</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%B5%8B%E8%AF%95&p=1" target="_blank">测试</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Java&p=1&username=${username}" target="_blank">Java</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=IOS&p=1&username=${username}" target="_blank">IOS</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%B0%E6%8D%AE%E5%BA%93&p=1&username=${username}" target="_blank">数据库</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=C%2FC%2B%2B&p=1&username=${username}" target="_blank">C/C++</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=C%23%2F.NET&p=1&username=${username}" target="_blank">C#/.NET</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Hadoop&p=1&username=${username}" target="_blank">Hadoop</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Android&p=1&username=${username}" target="_blank">Android</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%AE%97%E6%B3%95&p=1&username=${username}" target="_blank">算法</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=IT%E8%BF%90%E7%BB%B4&p=1&username=${username}" target="_blank">IT运维</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Python&p=1&username=${username}" target="_blank">Python</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%91%E8%AE%A1%E7%AE%97%2F%E5%A4%A7%E6%95%B0%E6%8D%AE&p=1&username=${username}" target="_blank">云计算/大数据</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Node.js&p=1&username=${username}" target="_blank">Node.js</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%B0%E6%8D%AE%E6%8C%96%E6%8E%98&p=1&username=${username}" target="_blank">数据挖掘</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=PHP&p=1&username=${username}" target="_blank">PHP</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Ruby%2FPerl&p=1&username=${username}" target="_blank">Ruby/Perl</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%89%8D%E7%AB%AF&p=1&username=${username}" target="_blank">前端</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%BF%90%E8%90%A5&p=1&username=${username}" target="_blank">运营</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%96%B0%E5%AA%92%E4%BD%93&p=1&username=${username}" target="_blank">新媒体</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%86%85%E5%AE%B9%E8%BF%90%E8%90%A5&p=1&username=${username}" target="_blank">内容运营</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BC%96%E8%BE%91&p=1&username=${username}" target="_blank">编辑</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=SEO&p=1&username=${username}" target="_blank">SEO</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%A7%E5%93%81%E8%BF%90%E8%90%A5&p=1&username=${username}" target="_blank">产品运营</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%A1%AC%E4%BB%B6&p=1&username=${username}" target="_blank">硬件</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B5%8C%E5%85%A5%E5%BC%8F&p=1&username=${username}" target="_blank">嵌入式</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%9B%86%E6%88%90%E7%94%B5%E8%B7%AF&p=1&username=${username}" target="_blank">集成电路</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AE%BE%E8%AE%A1&p=1&username=${username}" target="_blank">设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=Flash&p=1&username=${username}" target="_blank">Flash</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=UI%2FUE&p=1&username=${username}" target="_blank">UI/UE</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%B9%E6%95%88&p=1&username=${username}" target="_blank">特效</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BD%91%E9%A1%B5%2F%E7%BE%8E%E5%B7%A5&p=1&username=${username}" target="_blank">网页/美工</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=2D%2F3D&p=1&username=${username}" target="_blank">2D/3D</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%80%9A%E4%BF%A1&p=1&username=${username}" target="_blank">通信</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%A9%E8%81%94%E7%BD%91&p=1&username=${username}" target="_blank">物联网</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B0%84%E9%A2%91&p=1&username=${username}" target="_blank">射频</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%80%9A%E4%BF%A1&p=1&username=${username}" target="_blank">通信</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%A7%E5%93%81&p=1" target="_blank">产品</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%A8%E6%88%B7%E7%A0%94%E7%A9%B6&p=1" target="_blank">用户研究</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%A7%E5%93%81%E5%8A%A9%E7%90%86&p=1" target="_blank">产品助理</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="市场商务">
                    <div style="height: 100%;overflow: hidden">
                        <a>市场商务</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%95%86%E5%8A%A1&p=1&username=${username}" target="_blank">商务</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%94%80%E5%94%AE&p=1" target="_blank">销售</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%85%AC%E5%85%B3&p=1" target="_blank">公关</a>






                    </div>
                    <div class="type-list" data-type="市场商务">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%95%86%E5%8A%A1&p=1&username=${username}" target="_blank">商务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%95%86%E5%8A%A1&p=1&username=${username}" target="_blank">商务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8B%9B%E6%8A%95%E6%A0%87&p=1" target="_blank">招投标</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%94%80%E5%94%AE&p=1" target="_blank">销售</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8E%A8%E5%B9%BF&p=1" target="_blank">推广</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%94%80%E5%94%AE&p=1" target="_blank">销售</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%85%AC%E5%85%B3&p=1" target="_blank">公关</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AA%92%E4%BB%8B&p=1" target="_blank">媒介</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%85%AC%E5%85%B3&p=1" target="_blank">公关</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AE%A2%E6%9C%8D&p=1" target="_blank">客服</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AE%A2%E6%88%B7%E6%9C%8D%E5%8A%A1&p=1" target="_blank">客户服务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%94%80%E5%94%AE%E6%94%AF%E6%8C%81&p=1" target="_blank">销售支持</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B8%82%E5%9C%BA&p=1" target="_blank">市场</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%93%81%E7%89%8C&p=1" target="_blank">品牌</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B8%82%E5%9C%BA&p=1" target="_blank">市场</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%B8%A0%E9%81%93&p=1" target="_blank">渠道</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%88%86%E6%9E%90%2F%E8%B0%83%E7%A0%94&p=1" target="_blank">分析/调研</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%AD%96%E5%88%92&p=1" target="_blank">策划</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="电子电气">
                    <div style="height: 100%;overflow: hidden">
                        <a>电子电气</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E5%AD%90&p=1" target="_blank">电子</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E6%B0%94&p=1" target="_blank">电气</a>


                    </div>
                    <div class="type-list" data-type="电子电气">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E5%AD%90&p=1" target="_blank">电子</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%85%89%E7%94%B5&p=1" target="_blank">光电</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%8D%8A%E5%AF%BC%E4%BD%93%2F%E8%8A%AF%E7%89%87&p=1" target="_blank">半导体/芯片</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E5%AD%90%E5%B7%A5%E7%A8%8B&p=1" target="_blank">电子工程</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E6%B0%94&p=1" target="_blank">电气</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E6%B0%94%E8%AE%BE%E8%AE%A1&p=1" target="_blank">电气设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%B5%E6%B0%94%E5%B7%A5%E7%A8%8B&p=1" target="_blank">电气工程</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="人事行政">
                    <div style="height: 100%;overflow: hidden">
                        <a>人事行政</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%BA%E5%8A%9B%E8%B5%84%E6%BA%90&p=1" target="_blank">人力资源</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%8C%8E%E5%A4%B4&p=1" target="_blank">猎头</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%A1%8C%E6%94%BF&p=1" target="_blank">行政</a>


                    </div>
                    <div class="type-list" data-type="人事行政">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%BA%E5%8A%9B%E8%B5%84%E6%BA%90&p=1" target="_blank">人力资源</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BC%81%E4%B8%9A%E6%96%87%E5%8C%96&p=1" target="_blank">企业文化</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BA%BA%E4%BA%8B%2FHR&p=1" target="_blank">人事/HR</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8B%9B%E8%81%98&p=1" target="_blank">招聘</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%8C%8E%E5%A4%B4&p=1" target="_blank">猎头</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%8C%8E%E5%A4%B4&p=1" target="_blank">猎头</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%A1%8C%E6%94%BF&p=1" target="_blank">行政</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%89%8D%E5%8F%B0&p=1" target="_blank">前台</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%A1%8C%E6%94%BF&p=1" target="_blank">行政</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%8A%A9%E7%90%86&p=1" target="_blank">助理</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="外语外贸">
                    <div style="height: 100%;overflow: hidden">
                        <a>外语外贸</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%96%E8%AF%AD&p=1" target="_blank">外语</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%96%E8%B4%B8&p=1" target="_blank">外贸</a>


                    </div>
                    <div class="type-list" data-type="外语外贸">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%96%E8%AF%AD&p=1" target="_blank">外语</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%8B%B1%E8%AF%AD&p=1" target="_blank">英语</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%97%A5%E8%AF%AD&p=1" target="_blank">日语</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BF%BB%E8%AF%91&p=1" target="_blank">翻译</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%96%E8%B4%B8&p=1" target="_blank">外贸</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8A%A5%E5%85%B3%E5%91%98&p=1" target="_blank">报关员</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%96%E8%B4%B8%E4%B8%93%E5%91%98&p=1" target="_blank">外贸专员</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="财经法务">
                    <div style="height: 100%;overflow: hidden">
                        <a>财经法务</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BF%9D%E9%99%A9&p=1" target="_blank">保险</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%87%91%E8%9E%8D&p=1" target="_blank">金融</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8A%95%E8%B5%84&p=1" target="_blank">投资</a>








                    </div>
                    <div class="type-list" data-type="财经法务">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BF%9D%E9%99%A9&p=1" target="_blank">保险</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%B8%9A%E5%8A%A1&p=1" target="_blank">业务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BF%9D%E5%8D%95&p=1" target="_blank">保单</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%87%91%E8%9E%8D&p=1" target="_blank">金融</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%87%91%E8%9E%8D&p=1" target="_blank">金融</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9F%BA%E9%87%91&p=1" target="_blank">基金</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AF%81%E5%88%B8&p=1" target="_blank">证券</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%A3%8E%E6%8E%A7&p=1" target="_blank">风控</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8A%95%E8%B5%84&p=1" target="_blank">投资</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%88%86%E6%9E%90%E5%B8%88&p=1" target="_blank">分析师</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8A%95%E8%B5%84&p=1" target="_blank">投资</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%B3%95%E5%8A%A1&p=1" target="_blank">法务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%90%88%E8%A7%84&p=1" target="_blank">合规</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BE%8B%E5%B8%88&p=1" target="_blank">律师</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%B3%95%E5%8A%A1&p=1" target="_blank">法务</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%93%B6%E8%A1%8C&p=1" target="_blank">银行</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AE%A2%E6%88%B7%E7%BB%8F%E7%90%86&p=1" target="_blank">客户经理</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%83%A8%E9%97%A8%E7%BB%8F%E7%90%86&p=1" target="_blank">部门经理</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%B4%B7%E6%AC%BE&p=1" target="_blank">贷款</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%A4%A7%E5%A0%82%E7%BB%8F%E7%90%86&p=1" target="_blank">大堂经理</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%B4%A2%E4%BC%9A&p=1" target="_blank">财会</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AE%A1%E8%AE%A1&p=1" target="_blank">审计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%A8%8E%E5%8A%A1&p=1" target="_blank">税务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%B4%A2%E5%8A%A1&p=1" target="_blank">财务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BC%9A%E8%AE%A1%2F%E5%87%BA%E7%BA%B3&p=1" target="_blank">会计/出纳</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="教育咨询">
                    <div style="height: 100%;overflow: hidden">
                        <a>教育咨询</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%92%A8%E8%AF%A2&p=1" target="_blank">咨询</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%99%E8%82%B2&p=1" target="_blank">教育</a>


                    </div>
                    <div class="type-list" data-type="教育咨询">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%92%A8%E8%AF%A2&p=1" target="_blank">咨询</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%92%A8%E8%AF%A2%2F%E9%A1%BE%E9%97%AE&p=1" target="_blank">咨询/顾问</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%99%E8%82%B2&p=1" target="_blank">教育</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%99%E5%8A%A1&p=1" target="_blank">教务</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%95%99%E5%B8%88&p=1" target="_blank">教师</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B9%BC%E6%95%99&p=1" target="_blank">幼教</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9F%B9%E8%AE%AD&p=1" target="_blank">培训</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AF%BE%E7%A8%8B&p=1" target="_blank">课程</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="媒体设计">
                    <div style="height: 100%;overflow: hidden">
                        <a>媒体设计</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B9%BF%E5%91%8A&p=1" target="_blank">广告</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%89%BA%E6%9C%AF&p=1" target="_blank">艺术</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BC%96%E8%BE%91&p=1" target="_blank">编辑</a>






                    </div>
                    <div class="type-list" data-type="媒体设计">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B9%BF%E5%91%8A&p=1" target="_blank">广告</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%88%9B%E6%84%8F&p=1" target="_blank">创意</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%AD%96%E5%88%92&p=1" target="_blank">策划</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=AE&p=1" target="_blank">AE</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%89%BA%E6%9C%AF&p=1" target="_blank">艺术</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%BC%94%E8%89%BA&p=1" target="_blank">演艺</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%91%84%E5%BD%B1&p=1" target="_blank">摄影</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BC%96%E8%BE%91&p=1" target="_blank">编辑</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BC%96%E8%BE%91%2F%E9%87%87%E7%BC%96&p=1" target="_blank">编辑/采编</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%A0%A1%E5%AF%B9%2F%E6%8E%92%E7%89%88&p=1" target="_blank">校对/排版</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AE%BE%E8%AE%A1&p=1" target="_blank">设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BE%8E%E6%9C%AF%E8%AE%BE%E8%AE%A1&p=1" target="_blank">美术设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B9%B3%E9%9D%A2%E8%AE%BE%E8%AE%A1&p=1" target="_blank">平面设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B7%A5%E4%B8%9A%E8%AE%BE%E8%AE%A1&p=1" target="_blank">工业设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%A7%86%E8%A7%89%E8%AE%BE%E8%AE%A1&p=1" target="_blank">视觉设计</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AA%92%E4%BD%93&p=1" target="_blank">媒体</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AE%B0%E8%80%85&p=1" target="_blank">记者</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BC%96%E5%AF%BC&p=1" target="_blank">编导</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%B8%BB%E6%8C%81%2F%E6%92%AD%E9%9F%B3&p=1" target="_blank">主持/播音</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="机械制造">
                    <div style="height: 100%;overflow: hidden">
                        <a>机械制造</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%9C%BA%E6%A2%B0&p=1" target="_blank">机械</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%88%B6%E9%80%A0&p=1" target="_blank">制造</a>


                    </div>
                    <div class="type-list" data-type="机械制造">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%9C%BA%E6%A2%B0&p=1" target="_blank">机械</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%9C%BA%E6%A2%B0%E8%AE%BE%E8%AE%A1&p=1" target="_blank">机械设计</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%AE%BE%E5%A4%87&p=1" target="_blank">设备</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%9F%E4%BA%A7&p=1" target="_blank">生产</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%88%B6%E9%80%A0&p=1" target="_blank">制造</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%87%AA%E5%8A%A8%E5%8C%96&p=1" target="_blank">自动化</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%B4%A8%E9%87%8F&p=1" target="_blank">质量</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%AE%89%E5%85%A8&p=1" target="_blank">安全</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="建筑房产">
                    <div style="height: 100%;overflow: hidden">
                        <a>建筑房产</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BB%BA%E7%AD%91&p=1" target="_blank">建筑</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%88%BF%E4%BA%A7&p=1" target="_blank">房产</a>


                    </div>
                    <div class="type-list" data-type="建筑房产">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BB%BA%E7%AD%91&p=1" target="_blank">建筑</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BB%BA%E7%AD%91&p=1" target="_blank">建筑</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9C%9F%E6%9C%A8&p=1" target="_blank">土木</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9B%AD%E6%9E%97&p=1" target="_blank">园林</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9F%8E%E8%A7%84%2F%E5%B8%82%E6%94%BF&p=1" target="_blank">城规/市政</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%B7%A5%E7%A8%8B%E9%80%A0%E4%BB%B7&p=1" target="_blank">工程造价</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%88%BF%E4%BA%A7&p=1" target="_blank">房产</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%BB%99%E6%8E%92%E6%B0%B4&p=1" target="_blank">给排水</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%9C%B0%E4%BA%A7%E5%BC%80%E5%8F%91%2F%E7%AD%96%E5%88%92&p=1" target="_blank">地产开发/策划</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%88%BF%E4%BA%A7%E9%94%80%E5%94%AE&p=1" target="_blank">房产销售</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%A9%E4%B8%9A%E7%AE%A1%E7%90%86&p=1" target="_blank">物业管理</a>

                        </div>

                    </div>
                </div>

                <div class="type-item" data-type="其他类型">
                    <div style="height: 100%;overflow: hidden">
                        <a>其他类型</a>


                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BD%93%E8%82%B2%E5%BF%AB%E6%B6%88&p=1" target="_blank">体育快消</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%A9%E6%B5%81%E9%87%87%E8%B4%AD&p=1" target="_blank">物流采购</a>



                        <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%A3%9F%E5%93%81%E6%9D%90%E6%96%99&p=1" target="_blank">食品材料</a>










                    </div>
                    <div class="type-list" data-type="其他类型">

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BD%93%E8%82%B2%E5%BF%AB%E6%B6%88&p=1" target="_blank">体育快消</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BF%AB%E6%B6%88&p=1" target="_blank">快消</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BD%93%E8%82%B2&p=1" target="_blank">体育</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%A9%E6%B5%81%E9%87%87%E8%B4%AD&p=1" target="_blank">物流采购</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%87%87%E8%B4%AD&p=1" target="_blank">采购</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E4%BE%9B%E5%BA%94%E9%93%BE&p=1" target="_blank">供应链</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%89%A9%E6%B5%81&p=1" target="_blank">物流</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%A3%9F%E5%93%81%E6%9D%90%E6%96%99&p=1" target="_blank">食品材料</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%9D%90%E6%96%99&p=1" target="_blank">材料</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%A3%9F%E5%93%81&p=1" target="_blank">食品</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%9F%E7%89%A9%E5%8C%BB%E7%96%97&p=1" target="_blank">生物医疗</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%8C%BB%E8%8D%AF&p=1" target="_blank">医药</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%8C%BB%E7%94%9F&p=1" target="_blank">医生</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%94%9F%E7%89%A9&p=1" target="_blank">生物</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%8A%A4%E7%90%86&p=1" target="_blank">护理</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%83%BD%E6%BA%90%E7%8E%AF%E4%BF%9D&p=1" target="_blank">能源环保</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%9F%BF%E4%BA%A7&p=1" target="_blank">矿产</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E8%83%BD%E6%BA%90&p=1" target="_blank">能源</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E7%8E%AF%E4%BF%9D&p=1" target="_blank">环保</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=NGO%E5%85%AC%E7%9B%8A&p=1" target="_blank">NGO公益</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E5%BF%97%E6%84%BF%E8%80%85&p=1" target="_blank">志愿者</a>

                        </div>

                        <div>
                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%85%92%E5%BA%97%E6%97%85%E6%B8%B8&p=1" target="_blank">酒店旅游</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E9%85%92%E5%BA%97%E7%AE%A1%E7%90%86&p=1" target="_blank">酒店管理</a>

                            <a href="${pageContext.request.contextPath}/jobs/c-100000?k=%E6%97%85%E6%B8%B8&p=1" target="_blank">旅游</a>

                        </div>

                    </div>
                </div>

            </div>
            <div class="banner">
                <div class="slider-container" id="slider-container">
                    <div class="slider-wrap">
                    
                    <a href="https://www.xiaobaishixi.com/topic/overseas" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/49/CB/4981DD2814A9E85123CBE6130D41D0CB.png" alt="海外实习体验">
                    </a>
                    <a href="https://www.xiaobaishixi.com/com/9RA1S0O7ZYOIIXF6ON9BVWX6GLLDZCOM" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/C9/89/C994C582E136E67A2C2CDD0CC5E05F89.jpg" alt="网易游戏实习">
                    </a>    
                    <a href="https://www.xiaobaishixi.com/topic/ePlus" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/53/36/53193CD308ECBDC1C0854D89C6AF0E36.png" alt="北外壹佳校招">
                    </a>    
                    <a href="https://www.xiaobaishixi.com/com/UOX2OB4ONDCVW9URW0UFXAJJORWHZCOM" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/90/39/9066CC1CC2F04EF8FA130AF3FFE3B739.png" alt="懂球帝实习">
                    </a>
                    <a href="https://www.xiaobaishixi.com/topic/tyg" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/B5/80/B55243577142ED8DE619D940B9617380.png" alt="小白官方招聘">
                    </a>
                    <a href="https://www.xiaobaishixi.com/topic/overseas" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/49/CB/4981DD2814A9E85123CBE6130D41D0CB.png" alt="海外实习体验">
                    </a>
                    <a href="https://www.xiaobaishixi.com/com/9RA1S0O7ZYOIIXF6ON9BVWX6GLLDZCOM" target="_blank">
                    	<img src="https://xbimg.xiaobaishixi.com/C9/89/C994C582E136E67A2C2CDD0CC5E05F89.jpg" alt="网易游戏实习"></a>
                    </div>
                    <img class="slider-prev" src="https://xbimg.xiaobaishixi.com/static/nmain/img/index_arrow_l.png?v=292e9df6a088ee15897386fd9d3b4303"/>
                    <img class="slider-next" src="https://xbimg.xiaobaishixi.com/static/nmain/img/index_arrow_r.png?v=665ac40435d4d9dc4195dbbb01805697"/>
                    <div class="slider-nav">
	                    <div class="slider-nav-item active" data-nid="0" data-background="#dadde4"><span><!-- 网易游戏实习 --></span></div>
	                    <div class="slider-nav-item" data-nid="1" data-background="#2466c8"><span><!-- 北外壹佳校招 --></span></div>
	                    <div class="slider-nav-item" data-nid="2" data-background="#3da75c"><span><!-- 懂球帝实习 --></span></div>
	                    <div class="slider-nav-item" data-nid="3" data-background="#ffcf4e"><span><!-- 小白官方招聘 --></span></div>
	                    <div class="slider-nav-item" data-nid="4" data-background="#037ef3"><span><!-- 海外实习体验 --></span> 
                    </div>	
                    
                </div>
            </div>
            </div>
             <div class="banner-xbs">
                <div class="banner-xbs-title">
                    <span></span>
                    <a href="/article/station"><span></span></a>
                </div>
                <div class="banner-xbs-content">

                    <a href="/article/station/STNBLVNLXTMMNXLUP4KPYZ4RW9DD3CSA" target="_blank">
                        <div style="background: url('https://xbimg.xiaobaishixi.com/00/E7/00D6731A3BFC07B5A7516F018EC518E7.png') no-repeat center">
                            <p>我可以，拿下无领导小组面试的基本攻略</p>
                        </div>
                    </a>

                    <a href="/article/station/MPRPKSAZRWDAX3B7JDI6IVLOYIPOLCSA" target="_blank">
                        <div style="background: url('https://xbimg.xiaobaishixi.com/A5/01/A5D4220E48C786BD110C4A713456F601.png') no-repeat center">
                            <p>有什么是你面试很多次都失败后才知道的道理？</p>
                        </div>
                    </a>

                    <a href="/article/station/9MXVKQXSKOK0WQ8AH1BAYW8V4ABL6CSA" target="_blank">
                        <div style="background: url('https://xbimg.xiaobaishixi.com/80/3A/805DF09266F15A5484FE5951A44EFE3A.png') no-repeat center">
                            <p>你被录取了，快点回来做饭</p>
                        </div>
                    </a>

                </div>
            </div> 
        </div>
    </div>
    <div class="banner-sub">
    </div>
<script>
    var login_sdtoken = "qT5rF98bc1KokMETZ5v4kNJAKHUC5d2k";
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
        //s.parentNode.insertBefore(bp, s);
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
    var context = '2019-04-21 14:46:07';
    $(document).ready(function () {
//轮播设置
        var slider = $("#slider-container");
        var slider_wrap = slider.children(".slider-wrap");
        var n = 0, TIMER, slider_time = 2500;
        var slider_nav_item = $(".slider-nav-item");
        var slider_items = slider_wrap.children();
        var  count = slider_items.length;
        var mid_bar = $('.mid-bar');
        $(slider_nav_item[0]).addClass('active');
        /* mid_bar.css('background',data1[0].color); */
        slider_wrap.css('left',-730);
        n++;
        TIMER = setInterval(slider_go, slider_time);
        
        var carousel_state = false;
        v
        $('body').on('mouseenter','.slider-prev',function () {
            clearInterval(TIMER);
        }).on('mouseenter','.slider-next',function () {
            clearInterval(TIMER);
        }).on('mouseenter','.slider-wrap',function () {
            clearInterval(TIMER);
        }).on("mouseleave",'.slider-wrap', function () {
            if (count > 0) {
                TIMER = setInterval(slider_go, slider_time);
            }
        }).on('click','.slider-prev',function () {
            if(carousel_state) return;
            carousel_state = true;
            n = n-2;
            slider_go()
        }).on('click','.slider-next',function () {
            if(carousel_state) return;
            carousel_state = true;
            slider_go()
        }).on('click','.slider-nav-item',function () {
            clearInterval(TIMER);
            n = parseInt($(this).attr("data-nid"));
            slider_go();
            if (count > 0) {
                TIMER = setInterval(slider_go, slider_time);
            }
        });
        function slider_go() {
            if (count === 1) return;
            n = (n + 1) < count ? (n + 1) : 2;
            if(n === count - 1){
                slider_nav_item.eq(0).addClass("active").siblings().removeClass("active");
                mid_bar.css('background',slider_nav_item.eq(0).data('background'))
            }
            else{
                slider_nav_item.eq(n-1).addClass("active").siblings().removeClass("active");
                mid_bar.css('background',slider_nav_item.eq(n-1).data('background'))
            }
            slider_wrap.animate({'left':-730 * n},'fast',function () {
                if(n === count - 1){
                    slider_wrap.css('left',-730)
                }
                if(n === 0){
                    slider_wrap.css('left',(2 - count) * 730);
                    n = count - 2
                }
                carousel_state = false
            });
        }
        var dataJson = [{
            ad_position: 'P_1_1', // 轮播图
            max_num: 8
        }, {
            ad_position: 'P_1_2', // 轮播图下面那4个
            max_num: 5
        }, {
            ad_position: 'P_1_4', // 热门搜索
            max_num: 10
        }, {
            ad_position: 'P_1_9', // 顶部广告
            max_num: 1
        }];
        getRecommend('全国', dataJson, function (data) {
            var data1 = data.msg.P_1_1,
                data2 = data.msg.P_1_2,
                data4 = data.msg.P_1_4,
                data5 = data.msg.P_1_9;
            if (data1 && data1.length > 0) {
                var slider_wrap = $('.slider-wrap'),
                    slider_nav = $('.slider-nav');
                slider_wrap.empty();
                slider_nav.empty();
                $.each(data1, function (i, val) {
                    slider_wrap.append('<a href="' + val.redirect + '" target="_blank"><img src="' + val.img + '" alt="' + val.title + '"></a>');
                    slider_nav.append('<div class="slider-nav-item" data-nid="' + i + '" data-background="'+val.color+'"><span>'+val.title+'</span></div>');
                });
                if(data1.length > 1){
                    var first = data1[0],
                        last = data1[data1.length - 1];
                    slider_wrap.prepend('<a href="' + last.redirect + '" target="_blank"><img src="' + last.img + '" alt="' + last.title + '"></a>')
                    slider_wrap.append('<a href="' + first.redirect + '" target="_blank"><img src="' + first.img + '" alt="' + first.title + '"></a>')
                }
                slider_nav_item = $(".slider-nav-item");
                slider_items = slider_wrap.children();
                count = slider_items.length;
                mid_bar = $('.mid-bar');
                $(slider_nav_item[0]).addClass('active');
                mid_bar.css('background',data1[0].color);
                slider_wrap.css('left',-730);
                n++;
                TIMER = setInterval(slider_go, slider_time);
            }
            if (data2 && data2.length > 0) {
                var item = '';
                $.each(data2, function (i, val) {
                    item += '<a href="' + val.redirect + '" target="_blank">';
                    item += '<img src="'+val.img+'" style="width:100%;height:100%">';
                    item += '</a>';
                });
                $('.banner-sub').append(item)
            }
            if (data4 && data4.length > 0) {
                $.each(data4, function (i, val) {
                    $('.search-bar>span').append('<a href="/jobs/c-100000?k=' + val.title + '&p=1" data-simg="' + val.hideimg + '" target="_blank">' + val.title + '<img src="' + val.hideimg + '" class="hideimg">' + '</a>');
                });
            }
            if(data5 && data5.length > 0){
                $('.wrap').prepend('<a href="'+data5[0].redirect+'" class="top_ad_a"><img src="'+data5[0].img+'" class="top_ad_img"/><img src="https://xbimg.xiaobaishixi.com/static/nmain/img/close_gg.png?v=68c46616d8bf2281c54e9823c797b5a6" style="position: absolute;top: 5px;right: 5px;z-index:1;" class="top_ad_close"></a>')
            }
        });
        $(document).delegate(".top_ad_close",'click',function (e) {
            e.preventDefault();
            $(".top_ad_img").attr('href', '#');
            $(".top_ad_a").hide();
        })

        var $i_list = $(".intern-list");
        var $i_nav = $i_list.find(".intern-nav-item");
        var $i_c = $i_list.find(".intern-content");
        var $i_content = $i_list.find(".intern-content-container");
        var $i_content_item = $i_content.find(".intern-content-item");
        $i_nav.click(function () {
            var n = parseInt($(this).attr("data-iid"));
            $(this).addClass("active").siblings().removeClass("active");
            list_nav(n)
        });
        function list_nav(n) {
            $i_content
                .attr("style", "-webkit-transform: translate3D(" + (-(n - 1) * 1200).toString() + "px, 0, 0);-moz-transform: translate3D(" + (-(n - 1) * 1200).toString() + "px, 0, 0);-ms-transform: translate3D(" + (-(n - 1) * 1200).toString() + "px, 0, 0);-o-transform: translate3D(" + (-(n - 1) * 1200).toString() + "px, 0, 0);transform: translate3D(" + (-(n - 1) * 1200).toString() + "px, 0, 0);");
            $i_c.css("height", $i_content_item.eq(n - 1).height()+30);
        }
        list_nav(1)
    });
</script>

<!--城市选择-->
<div class="sty--modal">
    <div class="sty--modal--bg"></div>
    <div class="sty--modal--container" data-sty-modal-id="city">
        <div class="sty--modal--content" style="letter-spacing: 1px;">
            <div class="sty--modal--title">切换城市</div>
            <div class="sty--modal--text f16">尊敬的用户， 您当前选择的城市为 <span
                    class="select_city sty--modal--close" >[全国]</span>，您也可以切换到以下城市
            </div>
            <div class="sty--modal--text bottom0">
                <div class="select_citys">


                    <span data-name="hz" >杭州</span>



                    <span data-name="sz" >深圳</span>



                    <span data-name="nj" >南京</span>



                    <span data-name="sh" >上海</span>



                    <span data-name="wh" >武汉</span>



                    <span data-name="xa" >西安</span>



                    <span data-name="gz" >广州</span>



                    <span data-name="bj" >北京</span>



                    <span data-name="cd" >成都</span>


                </div>
            </div>
            <div class="sty--modal--text top10 f16">其他城市请选<span class="quanguo" > [全国]</span></div>
            <div class="sty--modal--btn top10 sure-btn">
                <span data-style="primary" class="sty--modal--close">关闭</span>
            </div>
        </div>
    </div>
</div>
<!--城市选择弹窗-->
<div class="cover">
    <div class="city-box">
        <div class="title">选择城市</div>
        <div class="city-list">
            <div class="current"><span>当前城市</span><span>成都</span></div>
            <ul class="more-city">
                <li>
                    <span>热门城市</span>
                    <ul class="list-item clearfix">


                        <li data-val=100000  class="active"  > 全国 </li>



                        <li data-val=990000  > 海外 </li>



                        <li data-val=110000  > 北京 </li>



                        <li data-val=310000  > 上海 </li>



                        <li data-val=440100  > 广州 </li>



                        <li data-val=510100  > 成都 </li>



                        <li data-val=440300  > 深圳 </li>



                        <li data-val=420100  > 武汉 </li>



                        <li data-val=320100  > 南京 </li>



                        <li data-val=120000  > 天津 </li>







                        <li data-val=330100  > 杭州 </li>























































































































































































































































































































































































































































































































































































































































































































































                        <li data-val=500000  > 重庆 </li>






















                    </ul>
                </li>














                <li>
                    <span>A-F</span>
                    <ul class="list-item clearfix">






                        <li data-val=654300 > 阿勒泰地区 </li>







                        <li data-val=210300 > 鞍山 </li>







                        <li data-val=340800 > 安庆 </li>







                        <li data-val=410500 > 安阳 </li>







                        <li data-val=513200 > 阿坝藏族羌族自治州 </li>







                        <li data-val=520400 > 安顺 </li>







                        <li data-val=542500 > 阿里地区 </li>







                        <li data-val=610900 > 安康 </li>







                        <li data-val=652900 > 阿克苏地区 </li>







                        <li data-val=659002 > 阿拉尔 </li>







                        <li data-val=110000 > 北京 </li>







                        <li data-val=450500 > 北海 </li>







                        <li data-val=530500 > 保山 </li>







                        <li data-val=652700 > 博尔塔拉蒙古自治州 </li>







                        <li data-val=150800 > 巴彦淖尔 </li>







                        <li data-val=210500 > 本溪 </li>







                        <li data-val=341600 > 亳州 </li>







                        <li data-val=220600 > 白山 </li>







                        <li data-val=220800 > 白城 </li>







                        <li data-val=340300 > 蚌埠 </li>







                        <li data-val=371600 > 滨州 </li>







                        <li data-val=451000 > 百色 </li>







                        <li data-val=620400 > 白银 </li>







                        <li data-val=511900 > 巴中 </li>







                        <li data-val=520500 > 毕节 </li>







                        <li data-val=522400 > 毕节地区 </li>







                        <li data-val=610300 > 宝鸡 </li>







                        <li data-val=652800 > 巴音郭楞蒙古自治州 </li>







                        <li data-val=130600 > 保定 </li>







                        <li data-val=150200 > 包头 </li>







                        <li data-val=469025 > 白沙黎族自治 </li>







                        <li data-val=469029 > 保亭黎族苗族自治 </li>







                        <li data-val=510100 > 成都 </li>







                        <li data-val=320400 > 常州 </li>







                        <li data-val=341400 > 巢湖 </li>







                        <li data-val=445100 > 潮州 </li>







                        <li data-val=130800 > 承德 </li>







                        <li data-val=150400 > 赤峰 </li>







                        <li data-val=341700 > 池州 </li>







                        <li data-val=341100 > 滁州 </li>







                        <li data-val=430700 > 常德 </li>







                        <li data-val=431000 > 郴州 </li>







                        <li data-val=451400 > 崇左 </li>







                        <li data-val=532300 > 楚雄彝族自治州 </li>







                        <li data-val=542100 > 昌都地区 </li>







                        <li data-val=652300 > 昌吉回族自治州 </li>







                        <li data-val=130900 > 沧州 </li>







                        <li data-val=140400 > 长治 </li>







                        <li data-val=469026 > 昌江黎族自治 </li>







                        <li data-val=220100 > 长春 </li>







                        <li data-val=430100 > 长沙 </li>







                        <li data-val=469023 > 澄迈 </li>







                        <li data-val=500000 > 重庆 </li>







                        <li data-val=222200 > 长白山管委会 </li>







                        <li data-val=210200 > 大连 </li>







                        <li data-val=441900 > 东莞 </li>







                        <li data-val=510600 > 德阳 </li>







                        <li data-val=511700 > 达州 </li>







                        <li data-val=533100 > 德宏傣族景颇族自治州 </li>







                        <li data-val=210600 > 丹东 </li>







                        <li data-val=232700 > 大兴安岭地区 </li>







                        <li data-val=370500 > 东营 </li>







                        <li data-val=371400 > 德州 </li>







                        <li data-val=532900 > 大理白族自治州 </li>







                        <li data-val=533400 > 迪庆藏族自治州 </li>







                        <li data-val=621100 > 定西 </li>







                        <li data-val=140200 > 大同 </li>







                        <li data-val=469003 > 儋州 </li>







                        <li data-val=469007 > 东方 </li>







                        <li data-val=469021 > 定安 </li>







                        <li data-val=230600 > 大庆 </li>







                        <li data-val=420700 > 鄂州 </li>







                        <li data-val=150600 > 鄂尔多斯 </li>







                        <li data-val=422800 > 恩施土家族苗族自治州 </li>







                        <li data-val=153100 > 二连浩特 </li>







                        <li data-val=357000 > 福建平潭综合实验区 </li>







                        <li data-val=350300 > 莆田 </li>







                        <li data-val=210400 > 抚顺 </li>







                        <li data-val=210900 > 阜新 </li>







                        <li data-val=341200 > 阜阳 </li>







                        <li data-val=361000 > 抚州 </li>







                        <li data-val=450600 > 防城港 </li>







                        <li data-val=350100 > 福州 </li>







                        <li data-val=440600 > 佛山 </li>







                    </ul>
                </li>


                <li>
                    <span>G-J</span>
                    <ul class="list-item clearfix">






                        <li data-val=450800 > 贵港 </li>







                        <li data-val=527000 > 贵安新区 </li>







                        <li data-val=627000 > 甘肃矿区 </li>







                        <li data-val=632600 > 果洛藏族自治州 </li>







                        <li data-val=640400 > 固原 </li>







                        <li data-val=360700 > 赣州 </li>







                        <li data-val=510800 > 广元 </li>







                        <li data-val=450300 > 桂林 </li>







                        <li data-val=511600 > 广安 </li>







                        <li data-val=513300 > 甘孜藏族自治州 </li>







                        <li data-val=623000 > 甘南藏族自治州 </li>







                        <li data-val=520100 > 贵阳 </li>







                        <li data-val=330100 > 杭州 </li>







                        <li data-val=211400 > 葫芦岛 </li>







                        <li data-val=340400 > 淮南 </li>







                        <li data-val=371700 > 菏泽 </li>







                        <li data-val=441300 > 惠州 </li>







                        <li data-val=632100 > 海东地区 </li>







                        <li data-val=131100 > 衡水 </li>







                        <li data-val=150100 > 呼和浩特 </li>







                        <li data-val=230400 > 鹤岗 </li>







                        <li data-val=231100 > 黑河 </li>







                        <li data-val=320800 > 淮安 </li>







                        <li data-val=330500 > 湖州 </li>







                        <li data-val=340600 > 淮北 </li>







                        <li data-val=341000 > 黄山 </li>







                        <li data-val=410600 > 鹤壁 </li>







                        <li data-val=420200 > 黄石 </li>







                        <li data-val=421100 > 黄冈 </li>







                        <li data-val=430400 > 衡阳 </li>







                        <li data-val=431200 > 怀化 </li>







                        <li data-val=441600 > 河源 </li>







                        <li data-val=451100 > 贺州 </li>







                        <li data-val=451200 > 河池 </li>







                        <li data-val=532500 > 红河哈尼族彝族自治州 </li>







                        <li data-val=610700 > 汉中 </li>







                        <li data-val=632200 > 海北藏族自治州 </li>







                        <li data-val=632300 > 黄南藏族自治州 </li>







                        <li data-val=632500 > 海南藏族自治州 </li>







                        <li data-val=632800 > 海西蒙古族藏族自治州 </li>







                        <li data-val=652200 > 哈密地区 </li>







                        <li data-val=653200 > 和田地区 </li>







                        <li data-val=130400 > 邯郸 </li>







                        <li data-val=150700 > 呼伦贝尔 </li>







                        <li data-val=230100 > 哈尔滨 </li>







                        <li data-val=460100 > 海口 </li>







                        <li data-val=340100 > 合肥 </li>







                        <li data-val=330400 > 嘉兴 </li>







                        <li data-val=411800 > 济源 </li>







                        <li data-val=360200 > 景德镇 </li>







                        <li data-val=620200 > 嘉峪关 </li>







                        <li data-val=620300 > 金昌 </li>







                        <li data-val=140500 > 晋城 </li>







                        <li data-val=140700 > 晋中 </li>







                        <li data-val=210700 > 锦州 </li>







                        <li data-val=220200 > 吉林 </li>







                        <li data-val=230300 > 鸡西 </li>







                        <li data-val=230800 > 佳木斯 </li>







                        <li data-val=330700 > 金华 </li>







                        <li data-val=360400 > 九江 </li>







                        <li data-val=360800 > 吉安 </li>







                        <li data-val=370800 > 济宁 </li>







                        <li data-val=410800 > 焦作 </li>







                        <li data-val=420800 > 荆门 </li>







                        <li data-val=421000 > 荆州 </li>







                        <li data-val=440700 > 江门 </li>







                        <li data-val=445200 > 揭阳 </li>







                        <li data-val=620900 > 酒泉 </li>







                        <li data-val=370100 > 济南 </li>







                    </ul>
                </li>


                <li>
                    <span>K-R</span>
                    <ul class="list-item clearfix">






                        <li data-val=410200 > 开封 </li>







                        <li data-val=650200 > 克拉玛依 </li>







                        <li data-val=653100 > 喀什地区 </li>







                        <li data-val=530100 > 昆明 </li>







                        <li data-val=220400 > 辽源 </li>







                        <li data-val=371200 > 莱芜 </li>







                        <li data-val=431300 > 娄底 </li>







                        <li data-val=451300 > 来宾 </li>







                        <li data-val=520200 > 六盘水 </li>







                        <li data-val=141000 > 临汾 </li>







                        <li data-val=141100 > 吕梁 </li>







                        <li data-val=211000 > 辽阳 </li>







                        <li data-val=320700 > 连云港 </li>







                        <li data-val=331100 > 丽水 </li>







                        <li data-val=341500 > 六安 </li>







                        <li data-val=350800 > 龙岩 </li>







                        <li data-val=371300 > 临沂 </li>







                        <li data-val=371500 > 聊城 </li>







                        <li data-val=410300 > 洛阳 </li>







                        <li data-val=510500 > 泸州 </li>







                        <li data-val=450200 > 柳州 </li>







                        <li data-val=511100 > 乐山 </li>







                        <li data-val=513400 > 凉山彝族自治州 </li>







                        <li data-val=542600 > 林芝地区 </li>







                        <li data-val=530700 > 丽江 </li>







                        <li data-val=530900 > 临沧 </li>







                        <li data-val=540100 > 拉萨 </li>







                        <li data-val=621200 > 陇南 </li>







                        <li data-val=622900 > 临夏回族自治州 </li>







                        <li data-val=469024 > 临高 </li>







                        <li data-val=469027 > 乐东黎族自治 </li>







                        <li data-val=469028 > 陵水黎族自治 </li>







                        <li data-val=620100 > 兰州 </li>







                        <li data-val=131000 > 廊坊 </li>







                        <li data-val=231000 > 牡丹江 </li>







                        <li data-val=340500 > 马鞍山 </li>







                        <li data-val=440900 > 茂名 </li>







                        <li data-val=441400 > 梅州 </li>







                        <li data-val=510700 > 绵阳 </li>







                        <li data-val=511400 > 眉山 </li>







                        <li data-val=153000 > 满洲里 </li>







                        <li data-val=320100 > 南京 </li>







                        <li data-val=511000 > 内江 </li>







                        <li data-val=542400 > 那曲地区 </li>







                        <li data-val=450100 > 南宁 </li>







                        <li data-val=320600 > 南通 </li>







                        <li data-val=350700 > 南平 </li>







                        <li data-val=350900 > 宁德 </li>







                        <li data-val=411300 > 南阳 </li>







                        <li data-val=511300 > 南充 </li>







                        <li data-val=533300 > 怒江傈僳族自治州 </li>







                        <li data-val=469032 > 南沙群岛 </li>







                        <li data-val=360100 > 南昌 </li>







                        <li data-val=330200 > 宁波 </li>







                        <li data-val=820000 > 澳门 </li>







                        <li data-val=410900 > 濮阳 </li>







                        <li data-val=211100 > 盘锦 </li>







                        <li data-val=360300 > 萍乡 </li>







                        <li data-val=410400 > 平顶山 </li>







                        <li data-val=510400 > 攀枝花 </li>







                        <li data-val=530800 > 普洱 </li>







                        <li data-val=620800 > 平凉 </li>







                        <li data-val=230900 > 七台河 </li>







                        <li data-val=530300 > 曲靖 </li>







                        <li data-val=621000 > 庆阳 </li>







                        <li data-val=130300 > 秦皇岛 </li>







                        <li data-val=230200 > 齐齐哈尔 </li>







                        <li data-val=330800 > 衢州 </li>







                        <li data-val=350500 > 泉州 </li>







                        <li data-val=441800 > 清远 </li>







                        <li data-val=450700 > 钦州 </li>







                        <li data-val=522300 > 黔西南布依族苗族自治州 </li>







                        <li data-val=522600 > 黔东南苗族侗族自治州 </li>







                        <li data-val=522700 > 黔南布依族苗族自治州 </li>







                        <li data-val=429005 > 潜江 </li>







                        <li data-val=469002 > 琼海 </li>







                        <li data-val=469030 > 琼中黎族苗族自治 </li>







                        <li data-val=370200 > 青岛 </li>







                        <li data-val=371100 > 日照 </li>







                        <li data-val=542300 > 日喀则地区 </li>







                    </ul>
                </li>


                <li>
                    <span>S-V</span>
                    <ul class="list-item clearfix">






                        <li data-val=440300 > 深圳 </li>







                        <li data-val=320500 > 苏州 </li>







                        <li data-val=220700 > 松原 </li>







                        <li data-val=230500 > 双鸭山 </li>







                        <li data-val=232800 > 省森工地区 </li>







                        <li data-val=460200 > 三亚 </li>







                        <li data-val=462100 > 省农垦 </li>







                        <li data-val=611000 > 商洛 </li>







                        <li data-val=140600 > 朔州 </li>







                        <li data-val=220300 > 四平 </li>







                        <li data-val=231200 > 绥化 </li>







                        <li data-val=232900 > 省农垦总局 </li>







                        <li data-val=321300 > 宿迁 </li>







                        <li data-val=330600 > 绍兴 </li>







                        <li data-val=341300 > 宿州 </li>







                        <li data-val=350400 > 三明 </li>







                        <li data-val=361100 > 上饶 </li>







                        <li data-val=411200 > 三门峡 </li>







                        <li data-val=411400 > 商丘 </li>







                        <li data-val=420300 > 十堰 </li>







                        <li data-val=421300 > 随州 </li>







                        <li data-val=430500 > 邵阳 </li>







                        <li data-val=440500 > 汕头 </li>







                        <li data-val=441500 > 汕尾 </li>







                        <li data-val=542200 > 山南地区 </li>







                        <li data-val=617000 > 陕西省西咸新区 </li>







                        <li data-val=640200 > 石嘴山 </li>







                        <li data-val=429021 > 神农架林区 </li>







                        <li data-val=460300 > 三沙 </li>







                        <li data-val=659001 > 石河子 </li>







                        <li data-val=130100 > 石家庄 </li>







                        <li data-val=440200 > 韶关 </li>







                        <li data-val=210100 > 沈阳 </li>







                        <li data-val=510900 > 遂宁 </li>







                        <li data-val=120000 > 天津 </li>







                        <li data-val=370900 > 泰安 </li>







                        <li data-val=610200 > 铜川 </li>







                        <li data-val=652100 > 吐鲁番地区 </li>







                        <li data-val=411100 > 漯河 </li>







                        <li data-val=130200 > 唐山 </li>







                        <li data-val=150500 > 通辽 </li>







                        <li data-val=211200 > 铁岭 </li>







                        <li data-val=220500 > 通化 </li>







                        <li data-val=321200 > 泰州 </li>







                        <li data-val=331000 > 台州 </li>







                        <li data-val=340700 > 铜陵 </li>







                        <li data-val=520600 > 铜仁 </li>







                        <li data-val=522200 > 铜仁地区 </li>







                        <li data-val=620500 > 天水 </li>







                        <li data-val=654200 > 塔城地区 </li>







                        <li data-val=429006 > 天门 </li>







                        <li data-val=469022 > 屯昌 </li>







                        <li data-val=659003 > 图木舒克 </li>







                        <li data-val=710000 > 台湾 </li>







                        <li data-val=140100 > 太原 </li>







                    </ul>
                </li>


                <li>
                    <span>W-Z</span>
                    <ul class="list-item clearfix">






                        <li data-val=532600 > 文山壮族苗族自治州 </li>







                        <li data-val=620600 > 武威 </li>







                        <li data-val=150900 > 乌兰察布 </li>







                        <li data-val=330300 > 温州 </li>







                        <li data-val=340200 > 芜湖 </li>







                        <li data-val=370700 > 潍坊 </li>







                        <li data-val=371000 > 威海 </li>







                        <li data-val=640300 > 吴忠 </li>







                        <li data-val=450400 > 梧州 </li>







                        <li data-val=610500 > 渭南 </li>







                        <li data-val=650100 > 乌鲁木齐 </li>







                        <li data-val=469001 > 五指山 </li>







                        <li data-val=469005 > 文昌 </li>







                        <li data-val=469006 > 万宁 </li>







                        <li data-val=659004 > 五家渠 </li>







                        <li data-val=320200 > 无锡 </li>







                        <li data-val=150300 > 乌海 </li>







                        <li data-val=610100 > 西安 </li>







                        <li data-val=360500 > 新余 </li>







                        <li data-val=421200 > 咸宁 </li>







                        <li data-val=411000 > 许昌 </li>







                        <li data-val=152500 > 锡林郭勒盟 </li>







                        <li data-val=130500 > 邢台 </li>







                        <li data-val=152200 > 兴安盟 </li>







                        <li data-val=320300 > 徐州 </li>







                        <li data-val=341800 > 宣城 </li>







                        <li data-val=410700 > 新乡 </li>







                        <li data-val=411500 > 信阳 </li>







                        <li data-val=420600 > 襄阳 </li>







                        <li data-val=420900 > 孝感 </li>







                        <li data-val=430300 > 湘潭 </li>







                        <li data-val=433100 > 湘西土家族苗族自治州 </li>







                        <li data-val=532800 > 西双版纳傣族自治州 </li>







                        <li data-val=610400 > 咸阳 </li>







                        <li data-val=630100 > 西宁 </li>







                        <li data-val=140900 > 忻州 </li>







                        <li data-val=429004 > 仙桃 </li>







                        <li data-val=469031 > 西沙群岛 </li>







                        <li data-val=350200 > 厦门 </li>







                        <li data-val=810000 > 香港 </li>







                        <li data-val=210800 > 营口 </li>







                        <li data-val=360600 > 鹰潭 </li>







                        <li data-val=462000 > 洋浦经济开发区 </li>







                        <li data-val=430900 > 益阳 </li>







                        <li data-val=445300 > 云浮 </li>







                        <li data-val=611100 > 杨凌示范区 </li>







                        <li data-val=140800 > 运城 </li>







                        <li data-val=222400 > 延边朝鲜族自治州 </li>







                        <li data-val=230700 > 伊春 </li>







                        <li data-val=320900 > 盐城 </li>







                        <li data-val=321000 > 扬州 </li>







                        <li data-val=360900 > 宜春 </li>







                        <li data-val=370600 > 烟台 </li>







                        <li data-val=420500 > 宜昌 </li>







                        <li data-val=430600 > 岳阳 </li>







                        <li data-val=431100 > 永州 </li>







                        <li data-val=441700 > 阳江 </li>







                        <li data-val=450900 > 玉林 </li>







                        <li data-val=511500 > 宜宾 </li>







                        <li data-val=511800 > 雅安 </li>







                        <li data-val=530400 > 玉溪 </li>







                        <li data-val=610600 > 延安 </li>







                        <li data-val=610800 > 榆林 </li>







                        <li data-val=632700 > 玉树藏族自治州 </li>







                        <li data-val=640100 > 银川 </li>







                        <li data-val=654000 > 伊犁哈萨克自治州 </li>







                        <li data-val=140300 > 阳泉 </li>







                        <li data-val=321100 > 镇江 </li>







                        <li data-val=330900 > 舟山 </li>







                        <li data-val=370400 > 枣庄 </li>







                        <li data-val=411700 > 驻马店 </li>







                        <li data-val=442000 > 中山 </li>







                        <li data-val=430800 > 张家界 </li>







                        <li data-val=211300 > 朝阳 </li>







                        <li data-val=130700 > 张家口 </li>







                        <li data-val=350600 > 漳州 </li>







                        <li data-val=370300 > 淄博 </li>







                        <li data-val=411600 > 周口 </li>







                        <li data-val=430200 > 株洲 </li>







                        <li data-val=440800 > 湛江 </li>







                        <li data-val=441200 > 肇庆 </li>







                        <li data-val=510300 > 自贡 </li>







                        <li data-val=512000 > 资阳 </li>







                        <li data-val=520300 > 遵义 </li>







                        <li data-val=530600 > 昭通 </li>







                        <li data-val=620700 > 张掖 </li>







                        <li data-val=640500 > 中卫 </li>







                        <li data-val=469033 > 中沙群岛的岛礁及其海域 </li>







                        <li data-val=410100 > 郑州 </li>







                        <li data-val=440400 > 珠海 </li>




                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<script src="https://xbimg.xiaobaishixi.com/static/js/jq.modal/jq.modal.js?v=1d1b22faddb4cd5168ebabc365d749f9"></script>
<script>
    (function () {
        var $addrSelect = $('#city_select_box');
        $('#city_addr').on('click', function () {
            $.sty_modal("city");
        });
        $('#city_select').on('click', function (e) {
            e.stopPropagation();
        });
        $addrSelect.add('.select_close,.select_city').on('click', function () {
            $addrSelect.fadeOut(300);
        });
        $('.select_citys>span').on('click', function () {
            var city = $(this).text();
            var route = $(this).data('name');
            $.post('/setlocationcity', {
                'city': city
            }, function (e) {
                if (e.code == 100) {
                    window.location.href = '/' + route;
                }
            }, 'json')
        });
        $('.quanguo').on('click', function () {
            var city = '全国';
            $.post('/setlocationcity', {
                'city': city
            }, function (e) {
                if (e.code == 100) {
                    window.location.href = '/';
                }
            }, 'json')
        });
        $('.sure-btn').on('click', function () {
            var city = '全国';
            $.post('/setlocationcity', {
                'city': city
            })
        });
        $(".city-address").css("opacity","1")
        $(".city-address").html('全国'+'站').click(function () {
            $.sty_modal("city");
        })
// $("#base_log_name,#base_log_password").on("keydown", function (e) {
// if (e.keyCode == 13) {
// $('#base_login_btn').click();
// }
// });
        $("#log_name,#log_password").on("keydown", function (e) {
            if (e.keyCode == 13) {
                $('#index_login_btn').click();
            }
        });
        $(".sty--modal--content").on("click", function (event) {
// event.stopPropagation();
        })
        $(".sty--modal").on("click", function () {
            $.sty_modal.hide();
        })
        var $ilb = $("#index_login_btn"), $username = $("#log_name"), $pass = $("#log_password");
        if ($ilb) {
            $ilb.on("click", function () {
                if (!$.trim($username.val()) || !$.trim($pass.val())) {
                    $.toast("请将登录信息填写完整！");
                    return;
                }
                $.post(
                    '/usr/login',
                    {username: $username.val(), password: myencode($pass.val()), remember_login: 1},
                    function (d) {
                        if (d.code == 100) {
// 同步登录其他产品
                            SSOLoginSync();
                            if (d.msg == 'company') {
                                window.location.href = "https://www.xiaobaishixi.com/hr/index"
                            }
                            else {
                                window.location.reload()
                            }
                        }
                        else {
                            $.toast(d.msg);
                        }
                    },
                    'json'
                )
            })
        }
    })();
</script>

<script src="https://xbimg.xiaobaishixi.com/static/js/jq.modal/jq.modal.js?v=1d1b22faddb4cd5168ebabc365d749f9"></script>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/parallax.js?v=db22e7a8f1bea70adb8e0e2b4389ffe7"></script>
<script>

    Array.prototype.getRandomItem = function () {
        return this[Math.floor(Math.random() * this.length)]
    }
    //搜索栏城市选择
    $('.search-container .btn1 ').on('click', function () {
        $('.cover .city-box .current').find('span').eq(1).text($('.search-container .btn1').find('span').text());
        $('.cover').fadeIn(300);
    })
    $('.cover').on('click', function () {
        $(this).fadeOut(300);
    })
    $('.cover .city-box').on('click', function (e) {
        e.stopPropagation();
    })
    $('.cover .city-list .list-item').on('click', 'li', function () {
        $(this).addClass('active').siblings().removeClass('active').parents('li').siblings('li').find('.list-item li').removeClass('active');
        var text = $.trim($(this).text());
        if (text.length > 4) {
            text = text.slice(0, 2);
        }
        $('.search-container .btn1 ').find('span').text(text);
        $('.cover').trigger('click');
        $('.search-container form').attr('action', addUrlArgs('c', $(this).data('val'), $('.search-container form').attr('action')));
    })
    //搜索栏搜索类型选择
    $('.search-container .btn2').on('click', function (e) {
        e.stopPropagation();
        $('.btn2-sel').show();
    })
    $('.btn2-sel').on('click', 'li', function (e) {
        e.stopPropagation();
        var type = $(this).find('span').text();
        if (type == '搜职位') {
            $('.search-container').find('input[name="k"]').attr('placeholder', '请输入期望的岗位');
        } else {
            $('.search-container').find('input[name="k"]').attr('placeholder', '请输入期望的公司名');
        }
        $('.search-container .btn2>span').text(type);
        $('.btn2-sel').prepend($(this)).hide();
        $('.search-container form').attr('action', addUrlArgs('st', $(this).data('val'), $('.search-container form').attr('action')));
    })
    $('html,body').on('click', function () {
        $('.btn2-sel').hide();
    })
    function addUrlArgs(name, value, url) {
        var currentUrl = url || window.location.href.split('#')[0];
        var patt = new RegExp(name + "-[^_&]*_");
        var other_para = '';
        if (/\?/g.test(currentUrl)) {
            other_para = currentUrl.split('?')[1];
            currentUrl = currentUrl.split('?')[0];
        } else {
            other_para = 'k=' + encodeURI($('input[name="keyword"]').val());
            currentUrl = '/jobs';
        }
        if (currentUrl.slice(-7) == 'interns') {
            currentUrl += '/'
        }
        if (patt.test(currentUrl)) {
            currentUrl = currentUrl.replace(patt, name + "-" + value + '_');
        } else {
            currentUrl += name + "-" + value + '_';
        }
//判断参数值是否为空，为空则去掉当前参数
        if (value === '') {
            var patt2 = new RegExp(name + "-[^_&]*_");
            currentUrl = currentUrl.replace(patt2, '');
        }
        if (other_para !== '') {
            if (currentUrl.slice(-1) == '/') {
                currentUrl = currentUrl.substring(0, currentUrl.length - 1)
            }
            currentUrl += '?' + other_para
        }
        return currentUrl;
    }
    $('.form--button').click(function () {
        var k = $('input[name="k"]').val();
        window.location.href = '${pageContext.request.contextPath}/search?k='+encodeURIComponent(k)+'&p=1'
    })
</script>


</body>
</html>