<%@ page language="java"
	import="java.util.*,com.shop.dao.*,com.shop.domain.*,com.shop.utils.*,java.sql.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>购物车</title>
<!--根据设备的宽度调整缩放比例   -->
<meta name="viewport" content="width=device-width,initial-scale=1" />
<!--引入bootstrap的CSS文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css"
	type="text/css" />
<!--引入jquery的js文件-->
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<%!ArrayList<ShopCart> listShopCart;
%>
	<% 
	int cId = 0;
	Customer customer = (Customer)session.getAttribute("customer");
	if(customer != null){
	    cId = customer.getId();
	}
	ShopCartDao scd = new ShopCartDao();
    listShopCart = scd.findAll(cId);
    session.setAttribute("listShopCart", listShopCart);
%>
	<!-- 头部DIV -->
	<%@include file="head.jsp"%>
	<!-- 主体DIV  -->
	<div class="container">
		<div class="row">
			<div style="margin: 0 auto; margin-top: 10px; width: 950px;">
				<strong style="font-size: 16px; margin: 5px 0;">订单详情</strong>
				<table class="table table-bordered">
					<tbody>
						<tr class="warning">
							<th>图片</th>
							<th>商品</th>
							<th>价格</th>
							<th>数量</th>
							<th>小计</th>
							<th>操作</th>
						</tr>
						<c:forEach var="shopcart" items="${sessionScope.listShopCart}">
							<c:set var="pid" value="${shopcart.pId}" />
							<%
							try{
							String param = session.getAttribute("pid").toString();
							int pId = 0;
							if(param != null){
								pId = Integer.parseInt(param);
							}
							ProductDao pd = new ProductDao();
							Product p = new Product();
							p = pd.find(pId);
							session.setAttribute("product", p);
							}catch(Exception e){
								e.printStackTrace();
							}
							%>
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id" value="22"> 
								  <a href="product_info.jsp?id=${sessionScope.product.id}">
								    <img src="${sessionScope.product.pImage}"
										alt="${sessionScope.product.pName}" width="auto" height="85px"
										style="display: inline-block;">
								  </a> 
								<td width="30%">
								  <a target="_blank" href="product_info.jsp?id=${sessionScope.product.id}">${sessionScope.product.pName}</a>
								</td>
								<td width="20%">${sessionScope.product.iPrice}元</td>
								<td width="10%"><input type="text" name="count" value="1"
									maxlength="4" size="10"></td>
								<td width="15%"><span class="subtotal">￥${shopcart.totolPrice}元</span></td>
								<td><a href="DelShopCart?id=${shopcart.id}" class="delete">删除</a></td>
							</tr>
                 			</c:forEach>
						</tbody>
					</table>
				</div>
		</div>
	</div>
	<%@include file="foot.jsp"%>
</body>
</html>