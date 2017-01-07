<%@ page language="java"
	import="java.util.*,com.shop.dao.*,com.shop.domain.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
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
	<%!Admin a = new Admin();
	%>
	<%
		try {
			request.setCharacterEncoding("UTF-8");
			String username = request.getParameter("username");
			if(username != null && !username.equals("")){
			AdminDao ad = new AdminDao();
			Admin a = new Admin();
			a = ad.find(username);
			if (a != null) {
				request.setAttribute("Admin", a);
			}else{
			    out.println("<script>alert('没找到！');</script>");
			}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<form action="queryAdmin.jsp">
		<label for="">请输入管理员名：</label> <input name="username" type="text" />
		<input type="submit" value="查询" onclick="adminIsEmpty()"/>
	</form>
	<c:if test="${not empty requestScope.Admin}">
		<!--表格-->
		<table class="table">
			<thead>
				<tr>
					<th width="15%">管理员名</th>
					<th width="20%">密码</th>
					<th width="20%">邮箱</th>
					<th width="20%">等级</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="15%" id="username" 
						class="label">${requestScope.Admin.username}</td>
					<td width="20%">${requestScope.Admin.password}</td>
					<td width="20%">${requestScope.Admin.email}</td>
					<td width="20%">${requestScope.Admin.level}</td>
					<td align="center"><input id="edit" type="button" value="修改"
						class="btn" onclick="editAdmin('${requestScope.Admin.username}')">
						<input id="del" type="button" value="删除" class="btn"
						onclick="delAdmin('${requestScope.Admin.username}')"></td>
				</tr>
			</tbody>
		</table>
	</c:if>
</body>
</html>