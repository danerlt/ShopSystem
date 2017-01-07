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

<%!Kind k = new Kind();%>
<%
try{
	int id = Integer.parseInt(request.getParameter("id"));
	KindDao kd = new KindDao();
	k = kd.find(id);
	session.setAttribute("Kind",k);
}catch(Exception e){
	e.printStackTrace();
}
%>
<h3>编辑分类信息</h3>
	<form action="EditKind" method="post">
		<table>
			<tr>
				<td>分类序号</td>
				<td><input name="id" type="text" value="${sessionScope.Kind.id}" /></td>
			</tr>
			<tr>
				<td>分类名称</td>
				<td><input name="kName" type="text" value="${sessionScope.Kind.kName}" /></td>
			</tr>
			<tr>
			    <td rowspan="2"><input type="submit" value="修改"/></td>
			</tr>
		</table>
	</form>
</body>
</html>