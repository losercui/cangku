<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login_s2_tags.jsp' starting page</title>
    
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
<center>
 <s:debug/>
  	<s:text name="login.title"></s:text>
    <s:form action="LoginAction"  method="post" >
    <!--name="namespace/actionname.action(.action可以省略),namesapce默认为“*”,通常配置为“/”，此时 
   		 访问action只需要actionname.action或者actionname即可  -->
      <s:textfield name="uname" key="login.username" />
      <s:password name="upassword" key="login.password"/>
      <s:submit name="submit" key="submit" />
</s:form>
</center>
</body>
</html>
