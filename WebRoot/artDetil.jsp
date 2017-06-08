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
 	<s:set name="art" value="#session['art']"></s:set>
  	<s:set name="rplist" value="#session['replyList']"></s:set>
    <s:include value="head.jsp"></s:include>
    	<div>
			<table align="center" width="800" border="" cellspacing="" cellpadding="">
				<tr><th colspan="2"><s:property value="#art.content"/></th></tr>
				<tr><th>回复</th><th width="150">时间</th></tr>
				<s:if test="#rplist.size() == 0">
					<tr><td>咩都没啊</td><td>无啊！</td></tr>
				</s:if>
				<s:else>
					<s:iterator  value="rplist" id="rp">
    					<tr><td><s:property value="#rp.content"/></td><td><s:property value="#rp.replysTime" /></td></tr>
    				</s:iterator>
				</s:else>
				
				
			</table>
		</div>
		<div align="center">
		<s:form action="addReply.action" method="post" >
			<s:textarea rows="6" cols="50" name="reply.content" label="回复内容"></s:textarea>
			<s:hidden name="reply.shearsId" value="%{#art.id}"></s:hidden>
			<s:hidden name="reply.usersId" value="%{#login.id}"></s:hidden>
			<s:submit value="发贴"></s:submit>
		</s:form>
    	</div>
  </body>
</html>
