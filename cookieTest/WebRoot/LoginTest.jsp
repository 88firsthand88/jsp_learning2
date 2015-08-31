<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
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
  <%request.setCharacterEncoding("utf-8"); %>
    <h1>登录验证程序</h1><hr>
    <%
    	String username="";
    	String password="";
    	String[] chooseit = request.getParameterValues("chooseit");
    	if(chooseit != null && chooseit.length > 0){
    		username = URLEncoder.encode(request.getParameter("username"),"utf-8");
    		password = URLEncoder.encode(request.getParameter("password"),"utf-8");
    		Cookie user = new Cookie("username",username);
    		Cookie pass = new Cookie("password",password);
    		user.setMaxAge(3600);
    		pass.setMaxAge(3600);
    		response.addCookie(user);
    		response.addCookie(pass);
    	}
    	else{
    		System.out.println("hi");
    		Cookie[] cookies = request.getCookies();
    		if(cookies.length > 0){
    			for(Cookie c : cookies){
    				if(c.getName().equals("username")|| c.getName().equals("password")){
    					c.setMaxAge(0);
    					response.addCookie(c);    				
    				}
    			}
    		}
    	} 	
     %>
     <a href="userInfo.jsp">用户信息展示</a>
  </body>
</html>



















