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
				data-ride="carousel" data-interval="2000">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/hot/小米.jpg" alt="">
					</div>
					<div class="item">
						<img src="img/hot/魅族.jpg" alt="">
					</div>
					<div class="item">
						<img src="img/hot/小米1.jpg" alt="">
					</div>
					<div class="item">
						<img src="img/hot/魅族1.png"">
					</div>
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
		<!--创建newProductDIV-->
		<div>
			<div class="row">
				<h3>最新商品</h3>
			</div>
			<div style="padding: 0;border: 0; margin: 0;">
				<div class="col-md-2" style="height: 420px; padding: 0;margin:0">
					<img src="img/热销.jpg" width="100%" height="100%" />
				</div>
				<div class="col-md-10">
					<div class="col-md-6">
						<img src="img/new/小米NOT3.jpg" height="210px" width="440px" />
					</div>
					<div class="col-md-2">
						<img src="img/new/oppor7.png" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/ipad air2.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
				</div>
			</div>
		</div>
		<!--创建adDIV-->
		<div class="">
			<img src="img/广告.jpg" />
		</div>
		<!--创建hotProductDIV-->
		<div class="">
			<div class="row">
				<h3>最热商品</h3>
			</div>
			<div style="padding: 0;border: 0; margin: 0;">
				<div class="col-md-2" style="height: 420px; padding: 0;">
					<img src="img/热销.jpg" width="100%" height="100%" />
				</div>
				<div class="col-md-10">
					<div class="col-md-6">
						<img src="img/new/小米NOT3.jpg" height="200px" />
					</div>
					<div class="col-md-2">
						<img src="img/new/oppor7.png" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/ipad air2.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
					<div class="col-md-2">
						<img src="img/new/三星s7.jpg" />
					</div>
				</div>
			</div>
		</div>
		<%@ include file="foot.jsp"%>
</body>

</html>