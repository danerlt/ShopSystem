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
	<%!Kind k = new Kind();
	%>
	<%
		try {
			request.setCharacterEncoding("UTF-8");
			String kname = request.getParameter("kName");
			if(kname != null && !kname.equals("")){
			KindDao kd = new KindDao();
			k = kd.find(kname);
			if (k != null) {
				request.setAttribute("Kind", k);
			}else {
			    out.println("<script>alert('没找到！');</script>");
			}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<form action="queryKind.jsp">
		<label for="">请输入分类名称：</label> <input name="kName" type="text" />
		<input type="submit" value="查询"  />
	</form>
	<c:if test="${not empty requestScope.Kind}">
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
					<tr>
						<td width="25%">${requestScope.Kind.id}</td>
						<td width="30%">${requestScope.Kind.kName}</td>
						<td align="center"><input id="edit" type="button" value="修改"
							class="btn" onclick="editKind('${requestScope.Kind.id}')"> <input
							id="del" type="button" value="删除" class="btn"
							onclick="delKind('${requestScope.Kind.id}')"></td>
					</tr>
			</tbody>
		</table>
	</c:if>
</body>
</html>