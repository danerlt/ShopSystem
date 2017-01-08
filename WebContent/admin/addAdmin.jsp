<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="cmn-Hans-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/admin.css" />
<script src="../js/admin.js"></script>
</head>
<body>
<h3>添加管理员</h3>
	<form action="AddAdmin" method="post">
		<table>
			<tr>
				<td>管理员名称</td>
				<td><input name="username" type="text" /></td>
			</tr>
			<tr>
				<td>管理员密码</td>
				<td><input name="password" type="text"></td>
			</tr>
			<tr>
				<td>管理员邮箱</td>
				<td><input name="email" type="email" /></td>
			</tr>
			<tr>
				<td>权限等级</td>
				<td><input name="level" type="number" min="1" max="3"/></td>
			</tr>
			<tr>
			    <td rowspan="2"><input type="submit" value="添加"/></td>
			</tr>
		</table>
	</form>
</body>
</html>