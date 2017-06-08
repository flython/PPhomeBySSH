<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>主页</title>
    
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
  	<s:set name="artlist" value="#session['artList']"></s:set>
    <s:include value="head.jsp"></s:include>
    <div>
			<table align="center" width="800" border="" cellspacing="" cellpadding="">
				<tr><th>标题</th><th width="150">时间</th></tr>
				<s:iterator  value="artlist" id="art">
    				<tr><td><s:a href="ArtDetail.action?id=%{#art.id}"><s:property value="#art.title"/></s:a></td><td><s:property value="#art.shareTime" /></td>
    				<s:if test="#login.id == 1"><td width="50"><s:a href="delete.action?id=%{#art.id}">删除</s:a></s:if></tr>
    				
    			</s:iterator>
				
			</table>
		</div>
		
		</div>
		<div align="center">
		<s:form action="newArticle.action" method="post" >
			<s:textfield name="share.title" label="标题" maxlength="20" size="48"></s:textfield>
			<s:textarea rows="6" cols="50" name="share.content" label="正文"></s:textarea>
			<s:hidden name="share.masterId" value="%{#login.id}"></s:hidden>
			<s:submit value="发帖"></s:submit>
			
		</s:form>
    	</div>
    
  </body>
</html>
