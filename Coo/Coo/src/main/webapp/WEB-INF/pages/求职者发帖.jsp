<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布帖子</title>
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
    </style>

</head>
<body>

<div class="shade_in" style=" margin-top: -50px; margin-left: -550px; width: 95%; max-height: 550px; display: block; opacity: 1; overflow-y: scroll;">
    <div class="shade_title">
        <span>发布帖子</span>
        <span class="close_shade">X</span>
    </div>
    <form action="${pageContext.request.contextPath }/user/insernote?note_author=${userName}" method="post">
        <div class="form_input">
            <!-- <input type="hidden" name="note_author"> -->
            <input type="hidden" name="status" value="0">
            <label for=""><i>*</i>帖子标题</label>
            <input type="text" name="note_title" placeholder="请一句话描述问题、并以问题号结尾" id="question">
        </div>
        <div class="form_input">
            <label for="">帖子内容</label>
            <textarea name="note_content" cols="30" rows="10" placeholder="请详细介绍问题，认真的提问才能带来专业的回答哦
建议补充以下信息：
1、问题发生的背景
2、最大的困扰是什么
3、问题相关数据是什么">
</textarea>
        </div>
     <!--    <div class="form_input">
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
        </div> -->
        <div class="form_input">
            <div class="tag_div">
                <input type="submit" value="提交" id="comment-submit">
                <!-- <input type="checkbox" id="is_nm" ><label for="">匿名提交</label> -->
            </div>
        </div>
        <div class="form_input error">
            <span class="error-tips"></span>
        </div>
    </form>
</div>

</body>
</html>