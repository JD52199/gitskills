<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="${pageContext.request.contextPath }/imgAdd" method="post" enctype="multipart/form-data">
    上传人:<input type="text" name="name" id="name"><br/>
      请选择文件:<input type="file" id="file" name="uploadfile" multiple="multiple"><br/>
   <input type="submit" value="上传"> 
   </form> 
</body>
</html>