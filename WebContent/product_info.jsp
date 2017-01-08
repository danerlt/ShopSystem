<%@ page language="java" contentType="text/html;charset=UTF-8"
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
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
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
        <%
           try{
        	   int id = Integer.parseInt(request.getParameter("id"));
        	   ProductDao pd = new ProductDao();
        	   Product product = pd.find(id);
        	   if(product != null){
        		   request.setAttribute("product", product);
        	   }
           }catch(Exception e){
        	   e.printStackTrace();
           }
        %>
		<div class="container">
			<div class="row">
			  <c:if test="${not empty requestScope.product}">
				<div
					style="border: 1px solid #e4e4e4;width:930px;margin-bottom:10px;margin:0 auto;padding:10px;margin-bottom:10px;">
					<a href="./index.jsp">首页&nbsp;&nbsp;&gt;</a>
					 <a href="./proucd_list_by_kid.jsp?kid=${product.kId}"><c:set var="kId" value="${product.kId}" scope="request">
					     </c:set>
					       <%
					         String kId = request.getAttribute("kId").toString();
					         Kind k = kd.find(Integer.parseInt(kId));
					         request.setAttribute("kName", k.getkName());
					       %>
					     <c:if test="${not empty requestScope.kName}">
					        ${requestScope.kName}
					     </c:if>&nbsp;&nbsp;&gt;</a>
					<a>${product.pName}</a>
				</div>

				<div style="margin:0 auto;width:950px;">
					<div class="col-md-6">
						<a href="product_info.jsp?id=${product.id}"> 
				           <img src="${product.pImage}" alt="${product.pName}"	width="170" height="170" style="display: inline-block;">
				        </a>
					</div>

					<div class="col-md-6">
						<div>
							<strong>${product.pName}</strong>
						</div>
						<div
							style="border-bottom: 1px dotted #dddddd;width:350px;margin:10px 0 10px 0;">
							<div>编号：${product.kId}</div>
						</div>

						<div style="margin:10px 0 10px 0;">
							会员价: <strong style="color:#ef0101;">￥：${product.iPrice}</strong> 市场价：
							<del>￥:${product.mPrice}</del>
						</div>

						<div style="margin:10px 0 10px 0;">
							促销: <a target="_blank" title="限时抢购 (2014-07-30 ~ 2015-01-01)"
								style="background-color: #f07373;">限时抢购</a>
						</div>

						<div
							style="padding:10px;border:1px solid #e7dbb1;width:330px;margin:15px 0 10px 0;;background-color: #fffee6;">
							<div style="margin:5px 0 10px 0;">白色</div>

							<div
								style="border-bottom: 1px solid #faeac7;margin-top:20px;padding-left: 10px;">
								购买数量: <input id="quantity" name="quantity" value="1"
									maxlength="4" size="10" type="text">
							</div>

							<div style="margin:20px 0 10px 0;;text-align: center;">
								<a href="cart.htm"> <input
									style="background: url('./images/product.gif') no-repeat scroll 0 -600px rgba(0, 0, 0, 0);height:36px;width:127px;"
									value="加入购物车" type="button">
								</a> &nbsp;收藏商品
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
				<div style="width:950px;margin:0 auto;">
					<div
						style="background-color:#d3d3d3;width:930px;padding:10px 10px;margin:10px 0 10px 0;">
						<strong>商品介绍</strong>
					</div>
                    <div>
                      <strong>${product.pDesc}</strong>
                    </div>
					<div>
						<img src="${product.pImage}">
					</div>

					<div
						style="background-color:#d3d3d3;width:930px;padding:10px 10px;margin:10px 0 10px 0;">
						<strong>商品参数</strong>
					</div>
					<div style="margin-top:10px;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th colspan="2">基本参数</th>
								</tr>
								<tr>
									<th width="10%">生产日期</th>
									<td width="30%">${product.pubTime}</td>
								</tr>
								<tr>
									<th width="10%">保质期</th>
									<td>${product.pKeepTime}&nbsp;天</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div style="background-color:#d3d3d3;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th><strong>商品评论</strong></th>
								</tr>
								<tr class="warning">
									<th>暂无商品评论信息 <a>[发表商品评论]</a></th>
								</tr>
							</tbody>
						</table>
					</div>

					<div style="background-color:#d3d3d3;width:900px;">
						<table class="table table-bordered">
							<tbody>
								<tr class="active">
									<th><strong>商品咨询</strong></th>
								</tr>
								<tr class="warning">
									<th>暂无商品咨询信息 <a>[发表商品咨询]</a></th>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
              </c:if>
              <c:if test="${empty requestScope.product}">
                 <p>没有该商品！</p>
              </c:if>
			</div>
		</div>
		<%@ include file="foot.jsp" %>
	</div>
</body>

</html>