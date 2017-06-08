<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册</title>
</head>
<body>
	<div align="center">
	<s:form action="register.action" method="post" enctype="multipart/form-data">
		<s:textfield name="user.account" label="账号"/>
		<s:password name="user.psw" label="密码"/>
		<s:submit value="注册"/>
	</s:form>    
	</div>
</body>
</html>