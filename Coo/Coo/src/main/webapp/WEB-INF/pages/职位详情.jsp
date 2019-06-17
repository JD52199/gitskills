<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  
  <head>
    <meta charset="UTF-8">
    <title>职位详情信息</title>
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
        <form class="layui-form">
          <div class="layui-form-item">
              <label for="post_name" class="layui-form-label">
                  <span  class="x-red" id="post_name" >*</span>职位名称：
              </label>
              <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                 <span>${post.post_name }</span>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="post_type" class="layui-form-label">
                  <span class="x-red" id="post_type">*</span>职位类型：
              </label>
              <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                 <span >${post.post_type}</span>
              </div>
          </div>
            <div class="layui-form-item">
                <label for="post_location" class="layui-form-label">
                    <span class="x-red" id="post_location">*</span>工作地点：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <span>${post.post_location }</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_salary" class="layui-form-label">
                    <span class="x-red" id="post_salary">*</span>工资薪酬：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <span>¥${post.post_salary}</span>
                </div>
            </div>
          <div class="layui-form-item">
              <label for="post_education" class="layui-form-label">
                  <span class="x-red" id="post_education">*</span>学历要求：
              </label>
              <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                <span>${post.post_education }</span>
              </div>
          </div>
          <div class="layui-form-item">
              <label for="post_publish" class="layui-form-label">
                  <span class="x-red" id="post_publish">*</span>发布时间：
              </label>
              <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                <span class="content">${post.post_publish }</span>
              </div>
          </div>
            <div class="layui-form-item">
                <label for="post_correctiontime" class="layui-form-label">
                    <span class="x-red" id="post_correctiontime">*</span>转正时间：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                  <span class="content">${post.post_correctiontime }</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="post_worktime" class="layui-form-label">
                    <span class="x-red" id="post_worktime">*</span>工作时间：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <span class="content">${post.post_worktime}</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="practice_time" class="layui-form-label">
                    <span class="x-red" id="practice_time">*</span>实习时间：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <span class="content">${post.practice_time }</span>
                </div>
            </div>
          <div class="layui-form-item layui-form-text">
              <label for="post_benefit" class="layui-form-label" id="post_benefit">
                  职位诱惑：
              </label>
              <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                  <p>${post.post_benefit }</p>
              </div>
          </div>
            <div class="layui-form-item layui-form-text">
                <label for="post_duty" class="layui-form-label" id="post_duty">
                    工作职责：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <p>${post.post_duty }</p>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label for="post_require" class="layui-form-label" id="post_require">
                    工作要求：
                </label>
                <div class="layui-form-label" style=" width: auto; margin-left: -25px;">
                    <p>${post.post_duty }</p>
                </div>
            </div>
          <div class="layui-form-item">
              <label class="layui-form-label">
              </label>
              <button style="margin-left: -75px;"  class="layui-btn layui-btn-primary" lay-filter="add" lay-submit="">
                 关闭
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

          //监听提交
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
          });
          
          
        });
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>