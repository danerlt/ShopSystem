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
		<!--创建整体布局DIV-->
		<div class="container">
			<!--创建logDIV--菜单栏-->
			<div class="container">
				<!--log-->
				<div class="col-md-4">
					<img src="img/log.jpg" width="100px" />
				</div>
				<!--log1-->
				<div class="col-md-4">
					<img src="img/log2.jpg" width="200px"/>

				</div>
				<div class="col-md-4" style="padding-top: 30px;">
					<a href="login.jsp">登录</a>
					<a href="register.jsp">注册</a>
					<a href="cart.jsp">购物车</a>
				</div>
			</div>
			<!--创建menuDIV--导航条-->
			<div class="container" >
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        					<span class="sr-only">Toggle navigation</span>
       						<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
        					<span class="icon-bar"></span>
      						</button>
							<a class="navbar-brand" href="index.jsp">首页</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">手机数码 <span class="sr-only">(current)</span></a></li>
								<li><a href="#">电脑办公</a></li>
								<li><a href="#">图书音频</a></li>
								<li><a href="#">服装</a></li>
							</ul>
							<form class="navbar-form navbar-right" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
			<!--
            	作者：lt1598552894@outlook.com
            	时间：2016-06-14
            	描述：购物车
            -->
		<div class="container">
			<div class="row">
				<div style="margin:0 auto; margin-top:10px;width:950px;">
					<strong style="font-size:16px;margin:5px 0;">订单详情</strong>
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
								<td width="60" width="40%">
									<input type="hidden" name="id" value="22">
									<img src="./image/dadonggua.jpg" width="70" height="60">
								</td>
								<td width="30%">
									<a target="_blank"> 有机蔬菜      大冬瓜...</a>
								</td>
								<td width="20%">
									￥298.00
								</td>
								<td width="10%">
									<input type="text" name="quantity" value="1" maxlength="4" size="10">
								</td>
								<td width="15%">
									<span class="subtotal">￥596.00</span>
								</td>
								<td>
									<a href="javascript:;" class="delete">删除</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!--创建footDIV-->
			<div class="container">
				<center>
					<img src="img/foot.png" align="center"/>
				</center>
			</div>
			<!--创建linkDIV-->
			<div class="container">
				<center>
					
				</center>
			</div>
			<!--创建版权DIV-->
			<div class="container">
				<center>
					<a href="" target="_blank">关于商城</a>|
					 <a href="" target="_blank">帮助中心</a>|
					 <a href="" target="_blank">联系我们</a>|
					 <a href="" target="_blank">发展历程</a>|
					 <a href="" target="_blank">媒体报道</a>
					 <br/>
					 <span>&copy;2016  版权所有. 京ICP备XXXXXXXX号-XXX京ICP证XXXXXX号</span>
				</center>
			</div>
	</body>

</html>