<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.type1 {
	position: fixed;
	left: 50%;
	top: 50%;
	width: 300px;
	height: 100px;
	margin: -100px 0px 0px -150px;
	border: 5px solid #888;
	background-color: rgba(255, 140, 0, 0.5);
	text-align: center;
	z-index:90;
}
 
.type2 {
	background-color: rgba(255, 140, 0, 0.1);
	border-style: groove;
	border-color: rgb(184, 134, 11)
}
</style>
<script language="javascript">
 
	function openPopup() {
		//取消div的隐藏
		document.getElementById("myPopup").style.display = "";
	}
 
	function closePopup() {
		//重新设置隐藏
		document.getElementById("myPopup").style.display = "none";
	}
	
	function greet(){
		document.getElementById("myPopup").style.display = "none";
		//这里可以写确定以后的操作
		//````````
		//````````
	}
</script>
</head>
<body>
	<%--一个div输入框，用户留言时弹出对话框输入昵称 --%>
	<input type="button"  value="出来" onclick="openPopup()">
	<%--div事先存在但被隐藏 --%>
	<div class="type1" id="myPopup" style="display: none">
		<font face="幼圆"><b>来者何人？</b></font>
		<br>
		<br>
		<input type="text" name="myText">
		<br>
		<br>
		<input type="button" class="type2" value="取消" onclick="closePopup()">
		<input type="button" class="type2" value="确定" onclick="greet()">
	</div>
</body>
</html>