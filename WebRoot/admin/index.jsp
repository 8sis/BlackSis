<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html xmlns="http://www.w3.org/1999/xhtml"><head><base href="<%=basePath%>">	<title>Image 系统</title>	<meta http-equiv="pragma" content="no-cache">	<meta http-equiv="cache-control" content="no-cache">	<meta http-equiv="expires" content="0">    	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">	<meta http-equiv="description" content="This is my page">		<link href="admin/assets/admin.css" rel="stylesheet" type="text/css" /></head><body>	<div class="page">		<div id="pageHeader">			<div id="tree"  class="static">							<div class="holder">					<span id="logo"></span>				</div>				</div>					<a class="logo" href="index.php?c=dashboard"  title="Imagevue Dashboard"><i></i></a>				</div>												<div class="pageMessenger">							<div class="message">Good 登录!</div>													<div class="error">请填写您的帐号和密码!</div>								</div>		<div class="layer layerLogin">			<div class="layerBody">				<div class="layerHeader">					登录				</div>									<form method="post" action="admin/login.jsp?login=&">									<table class="nice">						<tr>							<td class="c1">用户名：</td>							<td>								<input name="login" type="text" class="text" id="login"/>								<script>document.getElementById('login').focus()</script>							</td>						</tr>						<tr>							<td class="c1">密　码：</td>							<td>								<input type="password" name="password" class="text" />							</td>						</tr>						<tr>							<td></td>							<td>								<label>									<input type="checkbox" name="rememberme"/> &nbsp;									记住我的登录状态								</label>							</td>						</tr>						<tr class="controls left">							<td></td>							<td>								<input type="submit" class="button buttonSave" value="登录"/>							</td>						</tr>					</table>					</form>				</div>			</div>		</div>	</body></html>