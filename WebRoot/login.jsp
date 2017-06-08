<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
</head>
<body>
<div align = "center">
	<s:form action="dologin.action" method="post" >	
		
		<s:textfield name="user.account" label="账号" />
		<s:password name="user.psw" label="密码" />
		<tr align="center">
			<td colspan="2">
				<s:submit value="登录" theme="simple"/>	
				<input type="button" value="注册" onclick="window.location.href='register.jsp';" />
			</td>
		</tr>
	</s:form>
</div>
</body>
</html>