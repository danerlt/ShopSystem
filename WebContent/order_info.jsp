<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>订单信息</title>
		<!--根据设备的宽度调整缩放比例   -->
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<!--引入bootstrap的CSS文件 -->
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" type="text/css" />
		<!--引入jquery的js文件-->
		<script　type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
		<!--创建订单详情DIV-->
		<div class="container">
			<div class="row">

				<div style="margin:0 auto;margin-top:10px;width:950px;">
					<strong>订单详情</strong>
					<table class="table table-bordered">
						<tbody>
							<tr class="warning">
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
					</table>
				</div>

				<div style="text-align:right;margin-right:120px;">
					商品金额: <strong style="color:#ff6600;">￥596.00元</strong>
				</div>

			</div>

			<div>
				<hr />
				<form class="form-horizontal"
					style="margin-top:5px;margin-left:150px;">
					<div class="form-group">
						<label for="username" class="col-sm-1 control-label">地址</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="username"
								placeholder="请输入收货地址">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-1 control-label">收货人</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="inputPassword3"
								placeholder="请输收货人">
						</div>
					</div>
					<div class="form-group">
						<label for="confirmpwd" class="col-sm-1 control-label">电话</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="confirmpwd"
								placeholder="请输入联系方式">
						</div>
					</div>
				</form>

				<hr />

				<div style="margin-top:5px;margin-left:150px;">
					<hr />
					<p style="text-align:right;margin-right:100px;">
						<a
							href="javascript:document.getElementById('orderForm').submit();">
							<img src="./images/finalbutton.gif" width="204" height="51"
							border="0" />
						</a>
					</p>
					<hr />
				</div>
			</div>
		</div>
		<!--创建footDIV-->
		<div class="">
			<center>
				<img src="img/foot.png" align="center"/>
			</center>
		</div>
		<!--创建linkDIV-->
		<div class="">
			<center>
				
			</center>
		</div>
		<!--创建版权DIV-->
		<div class="">
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