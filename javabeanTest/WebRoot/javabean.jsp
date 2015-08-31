<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <h1>为实例化的javabean赋值</h1><hr>
    <jsp:useBean id="stu" class="com.student.Student" scope="page"></jsp:useBean>
    <!--  -->
	<jsp:setProperty property="name" name="stu" param="myname"/>
	<jsp:setProperty property="password" name="stu"/>
	姓名：<%=stu.getName() %><br>
	密码：<%=stu.getPassword()%><br>
	姓名：<jsp:getProperty name="stu" property="name"/><br>
	密码：<jsp:getProperty property="password" name="stu"/>
  </body>
</html>
