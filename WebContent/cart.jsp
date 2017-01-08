<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>购物车</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />

<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

.container .row div {
	/* position:relative;
	 float:left; */
	
}

font {
	color: #666;
	font-size: 22px;
	font-weight: normal;
	padding-right: 17px;
}
</style>
</head>

<body>
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
						<tr class="active">
							<td width="60" width="40%"><input type="hidden" name="id"
								value="22"> 
								<a href="product_info.jsp?id=${product.id}"> 
				           <img src="${product.pImage}" alt="${product.pName}"	width="170" height="170" style="display: inline-block;">
				        </a>
								<img src="./image/dadonggua.jpg" width="70"
								height="60"></td>
							<td width="30%"><a target="_blank"> 有机蔬菜 大冬瓜...</a></td>
							<td width="20%">￥298.00</td>
							<td width="10%"><input type="text" name="quantity" value="1"
								maxlength="4" size="10"></td>
							<td width="15%"><span class="subtotal">￥596.00</span></td>
							<td><a href="javascript:;" class="delete">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@include file="foot.jsp"%>
</body>
</html>