<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<title>用户登录</title>
</head>
<body>
	<div class="container">
		<div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login to our site</h3>
                            		<p>Enter your username and password to log on:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="dologin.action" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="user.account" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="user.psw" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <input type="submit" class="btn">Sign in!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
	</div>
	
<!--<div align = "center">
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
</div>-->
</body>
</html>