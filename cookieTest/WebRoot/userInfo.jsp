<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LoginTest.jsp' starting page</title>
    
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
    <h1>用户信息展示</h1><hr>
    <%
    	String username = "";
    	String password = "";
    	Cookie[] cookies = request.getCookies();
    	if(cookies.length > 0){
    		for(Cookie c : cookies){
    			if(c.getName().equals("username")){
    				username = URLDecoder.decode(c.getValue(),"utf-8");
    			}
    			else if(c.getName().equals("password")){
    				password = URLDecoder.decode(c.getValue(),"utf-8");
    			}
    		}
    	}
     %>
     用户名是：<%=username %>
    密码是：<%=password %>
  </body>
</html>




