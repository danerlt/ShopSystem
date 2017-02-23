<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>订单表</title>
<!--根据设备的宽度调整缩放比例   -->
<meta name="viewport" content="width=device-width,initial-scale=1" />
<!--引入bootstrap的CSS文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css"
	type="text/css" />
<!--引入jquery的js文件-->
<script 　type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
	<!--创建整体布局DIV-->
	<div class="container">
		<%@ include file="head.jsp"%>
		<!--
            	作者：lt1598552894@outlook.com
            	时间：2016-06-14
            	描述：订单详情DIV
            -->
		<div class="container">
			<div class="row">

				<div style="margin:0 auto; margin-top:10px;width:950px;">
					<strong>我的订单</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="success">
								<th colspan="5">订单编号:9005</th>
							</tr>
							<tr class="warning">
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
							</tr>
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id"
									value="22"> <img src="./image/dadonggua.jpg" width="70"
									height="60"></td>
								<td width="30%"><a target="_blank"> 有机蔬菜 大冬瓜...</a></td>
								<td width="20%">￥298.00</td>
								<td width="10%">5</td>
								<td width="15%"><span class="subtotal">￥596.00</span></td>
							</tr>
						</tbody>

						<tbody>
							<tr class="success">
								<th colspan="5">订单编号:9004</th>
							</tr>
							<tr class="warning">
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
							</tr>
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id"
									value="22"> <img src="./image/dadonggua.jpg" width="70"
									height="60"></td>
								<td width="30%"><a target="_blank"> 有机蔬菜 大冬瓜...</a></td>
								<td width="20%">￥298.00</td>
								<td width="10%">5</td>
								<td width="15%"><span class="subtotal">￥596.00</span></td>
							</tr>
						</tbody>

						<tbody>
							<tr class="success">
								<th colspan="5">订单编号:9003</th>
							</tr>
							<tr class="warning">
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
							</tr>
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id"
									value="22"> <img src="./image/dadonggua.jpg" width="70"
									height="60"></td>
								<td width="30%"><a target="_blank"> 有机蔬菜 大冬瓜...</a></td>
								<td width="20%">￥298.00</td>
								<td width="10%">5</td>
								<td width="15%"><span class="subtotal">￥596.00</span></td>
							</tr>
						</tbody>

						<tbody>
							<tr class="success">
								<th colspan="5">订单编号:9002</th>
							</tr>
							<tr class="warning">
								<th>图片</th>
								<th>商品</th>
								<th>价格</th>
								<th>数量</th>
								<th>小计</th>
							</tr>
							<tr class="active">
								<td width="60" width="40%"><input type="hidden" name="id"
									value="22"> <img src="./image/dadonggua.jpg" width="70"
									height="60"></td>
								<td width="30%"><a target="_blank"> 有机蔬菜 大冬瓜...</a></td>
								<td width="20%">￥298.00</td>
								<td width="10%">5</td>
								<td width="15%"><span class="subtotal">￥596.00</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div style="text-align: center;">
				<ul class="pagination">
					<li class="disabled"><a href="#" aria-label="Previous"><span
							aria-hidden="true">&laquo;</span></a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</div>
		<%@ include file="foot.jsp" %>
	</div>
</body>

</html>