<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
</head>

<body>
	<s:set name="login" value="#session['user']"></s:set>
	<div align="center">
			<table border="0" cellspacing="1" cellpadding="" width="1024">
				<tr>
					<th>
						<h1 align="left" style="font-family: '微软雅黑';">平平社区</h1>
					</th>
					<th colspan="3">
						<p align="right">欢迎你，<s:property value="#login.account"/>. <s:a href="logout.action">退出</s:a>  </p>
					</th>
				</tr>
				<tr>
					<td><s:a href="getAllArt.action">全部帖子</s:a></td>
					<td>我的帖子</td>
					<td>个人空间</td>
					<td width="300" align="right"><input type="text" name="search" id="search" placeholder="请输入搜索内容" /><button>搜索</button></td>
				</tr>
			</table>
		</div>
</body>
</html>
