<%@ page language="java" import="java.util.*,com.shop.dao.*,com.shop.domain.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
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

<%!Kind a = new Kind();%>
<%
try{
	String username = request.getParameter("username");
	out.println(username);
	KindDao ad = new KindDao();
	a = ad.find(username);
	request.setAttribute("Kind", a);
}catch(Exception e){
	e.printStackTrace();
}
%>
<h3>编辑分类信息</h3>
	<form action="EditKind" method="post">
		<table>
			<tr>
				<td>管理员名称</td>
				<td><input name="username" type="text" value="${requsetScope.Kind.username}" placeholder="${requsetScope.Kind.username}"/></td>
			</tr>
			<tr>
				<td>管理员密码</td>
				<td><input name="password" type="text" value="${requsetScope.Kind.password}" placeholder="${requsetScope.Kind.password}"></td>
			</tr>
			<tr>
				<td>管理员邮箱</td>
				<td><input name="email" type="email" value="${requsetScope.Kind.email}" placeholder="${requsetScope.Kind.email}"/></td>
			</tr>
			<tr>
				<td>权限等级</td>
				<td><input name="level" type="number" min="1" max="3" value="${requsetScope.Kind.level}" placeholder="${requsetScope.Kind.level}"/></td>
			</tr>
			<tr>
			    <td rowspan="2"><input type="submit" value="修改"/></td>
			</tr>
		</table>
	</form>
</body>
</html>