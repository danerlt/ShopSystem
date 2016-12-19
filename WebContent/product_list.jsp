<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>商品信息</title>
<!--根据设备的宽度调整缩放比例   -->
<meta name="viewport" content="width=device-width,initial-scale=1" />
<!--引入bootstrap的CSS文件 -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css"
	type="text/css" />
<!--引入jquery的js文件-->
<script 　type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
</style>
</head>

<body>
	<!--创建整体布局DIV-->
	<div class="container">
		<%@ include file="head.jsp"%>
		<!--
            	作者：lt1598552894@outlook.com
            	时间：2016-06-14
            	描述：物品销售DIV
            -->
		<div class="row" style="width:1210px;margin:0 auto;">
			<div class="col-md-12">
				<ol class="breadcrumb">
					<li><a href="#">首页</a></li>
				</ol>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10001.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>冬瓜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10002.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>圆白菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10003.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>甜玉米</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10004.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>胡萝卜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10005.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>芹菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10006.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>韭菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10007.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>香菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10008.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>土豆</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10007.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>香菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10008.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>土豆</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10007.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>香菜</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>
			<div class="col-md-2">
				<a href="product_info.htm"> <img src="products/1/cs10008.jpg"
					width="170" height="170" style="display: inline-block;">
				</a>
				<p>
					<a href="product_info.html" style='color:green'>土豆</a>
				</p>
				<p>
					<font color="#FF0000">商城价：&yen;299.00</font>
				</p>
			</div>

		</div>

		<!--分页 -->
		<div style="width:380px;margin:0 auto;margin-top:50px;">
			<ul class="pagination" style="text-align:center; margin-top:10px;">
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
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</div>
		<!-- 分页结束=======================        -->

		<!--
       		商品浏览记录:
        -->
		<div
			style="width:1210px;margin:0 auto; padding: 0 9px;border: 1px solid #ddd;border-top: 2px solid #999;height: 246px;">

			<h4 style="width: 50%;float: left;font: 14px/30px "微软雅黑 ";">浏览记录</h4>
			<div style="width: 50%;float: right;text-align: right;">
				<a href="">more</a>
			</div>
			<div style="clear: both;"></div>

			<div style="overflow: hidden;">

				<ul style="list-style: none;">
					<li
						style="width: 150px;height: 216;float: left;margin: 0 8px 0 0;padding: 0 18px 15px;text-align: center;"><img
						src="products/1/cs10001.jpg" width="130px" height="130px" /></li>
				</ul>

			</div>
		</div>
		<%@ include file="foot.jsp"%>
	</div>
</body>

</html>