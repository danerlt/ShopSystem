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
<script type="text/javascript">

	function addAdmin(){
		window.location="addAdmin.jsp";	
	}
	function editAdmin(username){
			window.location="editAdmin.jsp?username="+username;
	}
	function delAdmin(username){
		
			if(window.confirm("您确定要删除吗？删除之后不可以恢复哦！！！")){
				window.location="DelAdmin?username="+username;
			}
	}
</script>
</head>
<body>
	<%!ArrayList<Admin> listAdmin;
%>
	<% 
  AdminDao ad = new AdminDao();
  listAdmin = ad.findAll();
  session.setAttribute("listAdmin", listAdmin);
%>
	<div class="details">
		<div class="details_operation clearfix">
			<div class="bui_select">
				<input type="button" value="添&nbsp;&nbsp;加" class="add"
					onclick="addAdmin()">
			</div>

		</div>
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
				<c:forEach var="admin" items="${sessionScope.listAdmin}">
					<tr>
						<td width="15%"><label id="username" for="username"
							class="label">${admin.username}</label></td>
						<td width="20%">${admin.password}</td>
						<td width="20%">${admin.email}</td>
						<td width="20%">${admin.level}</td>
						<td align="center"><input id="edit" type="button" value="修改"
							class="btn" onclick="editAdmin('${admin.username}')"> <input
							id="del" type="button" value="删除" class="btn"
							onclick="delAdmin('${admin.username}')"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>