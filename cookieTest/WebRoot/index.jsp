<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="javax.activation.URLDataSource"%>
<%@page import="com.sun.xml.internal.fastinfoset.Decoder"%>
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
  	<%request.setCharacterEncoding("utf-8");%>
    <h1>登陆界面</h1><hr>
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
    <form action="LoginTest.jsp" method="post">
    	<table>
    		<tr>
    			<td>用户名：</td>
    			<td><input type="text" name="username" value="<%=username %>"/></td>
    		</tr>
    		<tr>
    			<td>密码：</td>
    			<td><input type="password" name="password" value="<%=password %>"></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="checkbox" checked="checked" name="chooseit">十天内记住我的登录状态</td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit"><input type="reset"></td>
    		</tr>
    		
    	</table>
    </form>
  </body>
</html>
