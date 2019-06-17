<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta charset="utf-8"/>
    <title>简历预览-我的简历-小白实习-最专业的实习招聘平台</title>
    <link rel="Shortcut Icon" href="https://xbimg.xiaobaishixi.com/static/img/favicon.ico?v=1b430f2ce85d97965ed5f59ecdf6ed80"/>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .box {
            color: #333;
            font: 14px/22px "微软雅黑", "宋体", Arial;
            word-wrap: break-word;
            margin: 0 auto;
            width: 680px;
            height: auto;
            background-color: #fafafa;
            border: solid 1px #f2f2f2;
        }
        ul:after {
            content: '';
            clear: both;
            height: 0;
            display: block;
        }
        a {
            text-decoration: none;
            color: #9b9b9b;
        }
        p {
            margin: 0;
        }
        .inf {
            padding: 0 20px;
            position: relative;
        }
        .specific {
            font: 14px/22px "微软雅黑", "宋体", Arial;
        }
        .pic {
            text-align: center;
            font-weight: bold;
        }
        .pic > img {
            width: 100px;
            height: 100px;
            margin-top: -75px;
            border-radius: 50%;
            border: 3px solid #fff;
        }
        .addr {
            right: 0;
            top: 0;
            width: 80px;
            text-align: right;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;
        }
        .inf div p {
            display: inline-block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal;
        }
        ul {
            margin: 0;
            list-style: none;
        }
        ul li {
            min-height: 30px;
            line-height: 30px;
            float: left;
            width: 50%;
        }
        pre {
            white-space: pre-wrap;
        }
        .weight {
            font-weight: 600;
        }
        .box > img {
            width: 680px;
            display: block;
        }
        .pic > div > span > * {
            vertical-align: middle;
            color: #333;
        }
        .pic > div > span:first-child {
            margin-right: 40px;
        }
        .pic > h1 {
            margin: 30px 0;
        }
        .cut_line {
            width: 100%;
            height: 1px;
            background-color: #ededed;
            position: absolute;
            left: 0;
            top: 50%;
        }
        .block_name {
            display: inline-block;
            margin: 0 auto;
            background-color: #ededed;
            width: 120px;
            text-align: center;
            height: 36px;
            line-height: 36px;
            border-radius: 17px;
            position: relative;
        }
        .inf > div:first-child {
            text-align: center;
            position: relative;
        }
        .my_name {
            margin: 30px 0;
        }
        .base_info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        .qwsx{
            display: table;
            width: 100%;
            box-sizing: border-box;
        }
        .qwsx p{
            display: block !important;
            line-height: 30px;
        }
        .qwsx p span{
            font-weight: bold;
        }
        .qwsx>div:not(.my_name){
            float: left;
            width: 50%;
        }
        .test_logo {
            position: absolute;
            right: 50px;
            top: 20px;
        }
        .join-xb,.get-contact{
            display: inline-block;
            text-align: center;
            width: 110px;
            height: 34px;
            line-height: 32px;
            color: #999;
            cursor: pointer;
            margin: 0 0 0 5px;
            font-weight: 500;
            border: 1px solid #EEEEEE;
            border-radius: 4px;
            outline: none;
        }
        .join-xb:hover,.get-contact:hover{
            cursor: pointer;
            background: #ffd000;
            color: #333333;
        }
    </style>
</head>
<body>
<div class="box">
    <img src="https://xbimg.xiaobaishixi.com/static/img/resume2/resume_tpl_bg.png?v=e5c3fe672630254a62088fa7434de34c" alt="">
    <div class="content" style="padding-bottom: 35px">
        <div class="inf pic">
            <img src="https://xbimg.xiaobaishixi.com/F5/4C/F550B44393EEB54724C71AF5E552614C.png" alt="header"/>
            <h1>fff</h1>
            <div>
<span class="tel" title="15002344940">
<img src="https://xbimg.xiaobaishixi.com/static/img/default_resume_tel.png?v=d62a0247dfc5df434cb1fe9a9e24c944" alt="">
<span class="tel">15002344940</span>
</span>
                <span class="email" title="2342342@qq.com" style="width: 500px;" title="2342342@qq.com">
<img src="https://xbimg.xiaobaishixi.com/static/img/default_resume_email.png?v=75d87cba206c135febb4b254ba4d0929" alt="">
<span class="email">2342342@qq.com</span>
</span>

            </div>
            <div class="test_logo">

            </div>
        </div>

        <div class="inf qwsx">
            <div class="my_name">
                <p class="cut_line"></p>
                <span class="block_name">期望实习</span>
            </div>
            <div>
                <p><span>期望地点：</span>成都</p>
                <p><span>期望职位：</span>Java</p>
                <p><span>期望日薪：</span>¥100/天</p>
            </div>
            <div>
                <p><span>期望天数：</span>5天</p>
                <p><span>实习月份：</span>1个月</p>
                <p><span>预计到岗日期：</span>2019-04-21</p>
            </div>
        </div>


        <div class="inf">
            <div class="my_name">
                <p class="cut_line"></p>
                <span class="block_name">教育背景</span>
            </div>

            <ul>
                <li><p class="time"><span class="weight">在校时间：</span>2019-2027</p></li>
                <li><p class="sec_p"><span class="weight">学校：</span>重庆科技学院</p></li>
                <li><p class="thr_p"><span class="weight">专业：</span>软件工程(本科)</p></li>

                <li>
                    <span class="weight">成绩排名：</span>前10%
                </li>


                <li>

                    <span class="weight">主修课程：</span>java

                </li>


                <li>
                    <span class="weight" style="display: block">荣誉奖励：</span>
                    <span class="specific" style="white-space: pre-wrap">无</span>
                </li>

            </ul>

        </div>








    </div>
</div>
<script src="https://xbimg.xiaobaishixi.com/static/nmain/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
<script>
    function get_contact(uuid) {
        $.get('/get/contact',
            {
                uuid:uuid
            }, function (data) {
                if(data.code === 100){
                    $(".tel").text(data.msg.tel).attr("title",data.msg.tel);
                    $(".email").text(data.msg.email).attr("title",data.msg.email);
                }else {
                    alert(data.msg)
                }
            }, 'json'
        );
    }
</script>
</body>
</html>
