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
<h3>添加分类</h3>
	<form action="AddKind" method="post">
		<table>
			<tr>
				<td>分类名称</td>
				<td><input name="kName" type="text" /></td>
			</tr>
			<tr>
			    <td rowspan="2"><input type="submit" value="添加"/></td>
			</tr>
		</table>
	</form>
</body>
</html>