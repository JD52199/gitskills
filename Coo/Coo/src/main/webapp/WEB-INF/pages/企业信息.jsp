<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page trimDirectiveWhitespaces="true"%>
      <%@ page import="java.util.*" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>修改企业信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
      <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
  </head>
  
  <body>
   <div class="x-body">
   
        <form class="layui-form" action="${pageContext.request.contextPath}/company/modifycompanyinfo" method="post" accept-charset="UTF-8" enctype="multipart/form-data" onsubmit="document.charset='UTF-8'">
         <div class="layui-form-item">
              <label for="company_name" class="layui-form-label">
                  <span class="x-red">*</span>企业名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="company_name" name="company_name" autocomplete="off" value="${username }" class="layui-input">
              </div>
          </div>
        <c:if test="${company2.status=='1' }">
         
          <div class="layui-form-item">
              <label for="company_type" class="layui-form-label">
                  <span class="x-red">*</span>企业类型
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${company2.company_type }" id=company_type name="company_type" autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="company_capital" class="layui-form-label">
                  <span class="x-red">*</span>注册资金
              </label>
              <div class="layui-input-inline">
                  <input type="text" value="${company2.company_capital }" id="company_capital" name="company_capital" required=""
                  autocomplete="off" class="layui-input">
              </div>
          </div>

          <div class="layui-form-item">
              <label for="post_salary" class="layui-form-label">
                  <span class="x-red">*</span>注册时间
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="company_registertime" name="company_registertime" required=""
                  autocomplete="off" class="layui-input" value="${company2.company_registertime }">
              </div>
          </div>
            <div class="layui-form-item">
                <label for="post_education" class="layui-form-label">
                    <span class="x-red">*</span>企业员工数
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="company_numbers" name="company_numbers" required=""
                           autocomplete="off" class="layui-input" value="${company2.company_numbers }">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_publish" class="layui-form-label">
                    <span class="x-red">*</span>企业位置
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="company_location" name="company_location" required="" 
                           autocomplete="off" class="layui-input" value="${company2.company_location }">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="company_detaillocation" class="layui-form-label">
                    <span class="x-red">*</span>企业代码
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="company_detaillocation" name="code" required="" 
                           autocomplete="off" class="layui-input" value="${company2.code }">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="company_culture" class="layui-form-label">
                    <span class="x-red">*</span>企业文化
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="company_culture" name="company_culture" required=""
                           autocomplete="off" class="layui-input" value="${company2.company_culture }">
                </div>
            </div>
            <!--  请选择文件:<input type="file" id="file" name="uploadfile" multiple="multiple"><br/>  -->
          <div class="layui-form-item">
              <label for="company_img" class="layui-form-label">
                  <span class="x-red">*</span>企业头像
              </label>
              <div class="layui-input-inline">
                  <input type="file" id="img" name="img" multiple="multiple" autocomplete="off" class="layui-input">
              </div>
              <input type="hidden" name="status" value="0">
          </div>
          <div class="layui-form-item">
              <label class="layui-form-label">
              </label>
              <button type="submit"  class="layui-btn" lay-filter="add" lay-submit="">
              修改
              </button>
              <button  class="layui-btn layui-btn-primary" lay-filter="add" lay-submit="">
                  关闭
              </button>
          </div>
          </c:if>
          <c:if test="${company2.status=='0' }">
          	<span>企业信息正在审核中...</span>
          </c:if>
          
      </form>
    </div>
    <!-- <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
        /*   //自定义验证规则
          form.verify({
            nikename: function(value){
              if(value.length < 5){
                return '昵称至少得5个字符啊';
              }
            }
            ,pass: [/(.+){6,12}$/, '密码必须6到12位']
            ,repass: function(value){
                if($('#L_pass').val()!=$('#L_repass').val()){
                    return '两次密码不一致';
                }
            }
          });
 */
         /*  //监听提交
          form.on('submit(add)', function(data){
            console.log(data);
            //发异步，把数据提交给php
            layer.alert("增加成功", {icon: 6},function () {
                // 获得frame索引
                var index = parent.layer.getFrameIndex(window.name);
                //关闭当前frame
                parent.layer.close(index);
            });
            return false;
          }); */
          
          
        });
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script> -->
  </body>

</html>