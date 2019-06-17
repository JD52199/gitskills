<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>发布企业职位</title>
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
        <form class="layui-form" method="post" action="${pageContext.request.contextPath}/company/addjob?username=${username}">
          <div class="layui-form-item">
              <label for="post_name" class="layui-form-label">
                  <span class="x-red">*</span>职位名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="post_name" name="post_name" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="post_type" class="layui-form-label">
                  <span class="x-red">*</span>职位类型
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="post_type" name="post_type" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="post_location" class="layui-form-label">
                  <span class="x-red">*</span>工作地点
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="post_location" name="post_location" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
          <div class="layui-form-item">
              <label for="post_salary" class="layui-form-label">
                  <span class="x-red">*</span>工资薪酬
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="post_salary" name="post_salary" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>
            <div class="layui-form-item">
                <label for="post_education" class="layui-form-label">
                    <span class="x-red">*</span>最低学历
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="post_education" name="post_education" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_publish" class="layui-form-label">
                    <span class="x-red">*</span>发布时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="post_publish" name="post_publish" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_correctiontime" class="layui-form-label">
                    <span class="x-red">*</span>转正周期
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="post_correctiontime" name="post_correctiontime" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_worktime" class="layui-form-label">
                    <span class="x-red">*</span>每周工作时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="post_worktime" name="post_worktime" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="practice_time" class="layui-form-label">
                    <span class="x-red">*</span>实习时间
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="practice_time" name="practice_time" required="" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
          <div class="layui-form-item layui-form-text">
              <label for="post_benefit" class="layui-form-label">
                  职位诱惑
              </label>
              <div class="layui-input-block">
                  <textarea placeholder="请输入内容" id="post_benefit" name="post_benefit" class="layui-textarea"></textarea>
              </div>
          </div>
            <div class="layui-form-item layui-form-text">
                <label for="post_duty" class="layui-form-label">
                    职位职责
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" id="post_duty" name="post_duty" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="post_require" class="layui-form-label">
                    职位要求
                </label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入内容" id="post_require" name="post_require" class="layui-textarea"></textarea>
                </div>
            </div>
          <div class="layui-form-item">
              <label for="add" class="layui-form-label">
              </label>
              <button  id="add" class="layui-btn" lay-filter="add" lay-submit="">
                  增加
              </button>
          </div>
      </form>
    </div>
    <script>
        layui.use(['form','layer'], function(){
            $ = layui.jquery;
          var form = layui.form
          ,layer = layui.layer;
        
          //自定义验证规则
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
       		
          
          /* $(".layui-btn").click(function () {  
        	// 获得frame索引
              var index = parent.layer.getFrameIndex(window.name);
              //关闭当前frame
              parent.layer.close(index);
        	  
          }) */

        /*   //监听提交
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
      })();</script>
  </body>

