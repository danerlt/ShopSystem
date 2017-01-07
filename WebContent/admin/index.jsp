<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>电子商城</title>
<!--根据设备的宽度调整缩放比例   -->
<meta name="viewport" content="width=device-width,initial-scale=1" />
<!--引入bootstrap的CSS文件 -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/bootstrap-theme.min.css"
	type="text/css" />
<!--引入jquery的js文件-->
<script type="text/javascript" src="../js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css/admin.css" />
<script>
  $(document).ready(function(){
	  $("#product").click(function(){
		  $("#productMenu").toggle();
	  });
	  $("#admin").click(function(){
		  $("#adminMenu").toggle();
	  });
  });
  
</script>
</head>

<body>
	<div class="header">
		<div class="col-md-12">
			<h1>后台管理系统</h1>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="col-md-2 navbar">
			    <h2>管理员</h2>
				<ul>
					<li>
					    <a id="product" href="#">商品管理</a>
					    <ul id="productMenu" class="submenu">
					    	<li><a href="listProduct.jsp" target="mainFrame">显示所有商品</a></li>
					    	<li><a href="queryProduct.jsp" target="mainFrame">查询商品</a></li>
					    	<li><a href="addProduct.jsp" target="mainFrame"> 添加商品</a></li>
					    	<li><a href="updataProduct.jsp" target="mainFrame">修改商品</a></li>
					    	<li><a href="deleteProduct.jsp" target="mainFrame">删除商品</a></li>
					    </ul>
					</li>
					<li><a href="">分类管理</a></li>
					<li><a href="">订单管理</a></li>
					<li><a href="">用户管理</a></li>
					<li><a id="admin" href="#">管理员管理</a>
					    <ul id="adminMenu" class="submenu">
					    	<li><a href="listAdmin.jsp" target="mainFrame">显示所有管理员</a></li>
					    	<li><a href="queryAdmin.jsp" target="mainFrame">查询管理员</a></li>
					    	<li><a href="addAdmin.jsp" target="mainFrame"> 添加管理员</a></li>
					    	<li><a href="editAdmin.jsp" target="mainFrame">修改管理员</a></li>
					    </ul>
					</li>
				</ul>
			</div>
			<div class="col-md-10">
			    <h2>后台管理</h2>
			    <iframe name="mainFrame" width="100%" height="600px" frameborder="none">
			    
			    </iframe>
 			</div>
		</div>
	</div>
</body>
</html>