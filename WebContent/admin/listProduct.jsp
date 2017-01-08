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
	<%!ArrayList<Product> listProduct;
%>
	<% 
  ProductDao pd = new ProductDao();
  listProduct = pd.findAll();
  session.setAttribute("listProduct", listProduct);
  
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
					<th width="5%">商品ID</th>
					<th width="10%">商品名称</th>
					<th width="15%">商品描述</th>
					<th width="5%">库存量</th>
					<th width="10%">生产日期</th>
					<th width="5%">保质期(天)</th>
					<th width="15%">图片</th>
					<th width="10%">分类名称</th>
					<th width="5%">网站价格</th>
					<th width="5%">市场价格</th>
					<th width="5%">是否热销</th>
					<th width="5%">首页显示</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${sessionScope.listProduct}">
					<tr>
					  <td width="5%">${product.id}</td>
					  <td widtd="10%">${product.pName}</td>
					  <td width="15%">${product.pDesc}</td>
					  <td width="5%">${product.pNum}</td>
					  <td width="10%">${product.pubTime}</td>
					  <td width="5%">${product.pKeepTime}</td>
					  <td width="15%">
					    <img width="100%" height="auto" src="${pageContext.servletContext.contextPath}/${product.pImage}" alt="商品图片" />
					  </td>
					  <td width="10%">
					     <c:set var="kId" value="${product.kId}" scope="request">
					     </c:set>
					       <%
					         KindDao  kd = new KindDao();
					         String kId = request.getAttribute("kId").toString();
					         Kind k = kd.find(Integer.parseInt(kId));
					         request.setAttribute("kName", k.getkName());
					       %>
					     <c:if test="${not empty requestScope.kName}">
					        ${requestScope.kName}
					     </c:if>
					  </td>
					  <td width="5%">${product.iPrice}</td>
					  <td width="5%">${product.mPrice}</td>
					  <td width="5%">${product.isHot}</td>
					  <td width="5%">${product.isShow}</td>
					<td align="center"><input id="edit" type="button" value="修改"
							class="btn" onclick="editKind('${product.id}')"> <input
							id="del" type="button" value="删除" class="btn"
							onclick="delKind('${product.id}')">
					</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>