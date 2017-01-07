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
	<%!ArrayList<Kind> listKind;
%>
	<% 
  KindDao kd = new KindDao();
  listKind = kd.findAll();
  session.setAttribute("listKind", listKind);
%>
	<div class="details">
		<div class="details_operation clearfix">
			<div class="bui_select">
				<input type="button" value="添&nbsp;&nbsp;加" class="add"
					onclick="addKind()">
			</div>

		</div>
		<!--表格-->
		<table class="table">
			<thead>
				<tr>
					<th width="25%">分类序号</th>
					<th width="30%">分类名称</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="kind" items="${sessionScope.listKind}">
					<tr>
						
						<td width="25%">${kind.id}</td>
						<td width="30%">${kind.kName}</td>
						<td align="center"><input id="edit" type="button" value="修改"
							class="btn" onclick="editKind('${kind.id}')"> <input
							id="del" type="button" value="删除" class="btn"
							onclick="delKind('${kind.id}')"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>