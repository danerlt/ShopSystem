<%@ page language="java"
	import="java.util.*,com.shop.dao.*,com.shop.domain.*,com.shop.utils.*,java.sql.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>电子商城</title>
		<!--根据设备的宽度调整缩放比例   -->
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<!--引入bootstrap的CSS文件 -->
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css" />
		<!--引入jquery的js文件-->
		<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>

<body>
	<!--创建整体布局DIV-->
	<div class="container">
		<!-- 头部DIV -->
		<%@include file="head.jsp"%>
		<!--创建imgDIV-->
		<div class="container">
			<script>
			   $(function(){
			      // 初始化轮播
			      	$(".start-slide").click(function(){
			        	 $("##carousel-example-generic").carousel('cycle');
			      		});
				   });
				</script>
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel" data-interval="2000" style="height:450px">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				<%!	ArrayList<Product> listHotProduct;
				%>
				<% 
			  ProductDao pd = new ProductDao();
			  listHotProduct = pd.findHot();
			  session.setAttribute("listHotProduct", listHotProduct);
			   %>
			   <li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
			   <c:forEach var="index" begin="1" end="${fn:length(listHotProduct)-1}" step="1">
			       <li data-target="#carousel-example-generic" data-slide-to="${index}"></li>
			   </c:forEach>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
				    <div class="item active">
					        <a href="product_info.jsp?id=${sessionScope.listHotProduct[0].id}"><img src="${listHotProduct[0].pImage}" alt="${product.pName}"></a>
					</div>
				    <c:forEach var="index"  begin="1" end="${fn:length(listHotProduct)-1}" step="1">
				        <div class="item">
					        <a href="product_info.jsp?id=${sessionScope.listHotProduct[index].id}"><img src="${sessionScope.listHotProduct[index].pImage}" alt="${product.pName}"></a>
					    </div>
			        </c:forEach>
				</div>

				<!-- Controls -->
				<a class="carousel-control left" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!--创建adDIV-->
		<div class="">
			<img src="img/广告.jpg" />
		</div>
		<!--创建newProductDIV-->
		<div>
			<div class="row">
				<h3>最新商品</h3>
			</div>
		    <jsp:include page="product_list.jsp"></jsp:include>
			
		</div>
	</div>
	<%@ include file="foot.jsp"%>
</body>

</html>