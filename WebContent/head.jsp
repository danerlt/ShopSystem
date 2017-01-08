<%@ page language="java"
	import="java.util.*,com.shop.dao.*,com.shop.domain.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%!ArrayList<Kind> listKind;
%>
	<% 
  KindDao kd = new KindDao();
  listKind = kd.findAll();
  session.setAttribute("listKind", listKind);
%>
<!--创建logDIV--菜单栏-->
<div class="container">
	<!--log-->
	<div class="col-md-4">
		<img src="img/log.jpg" width="100px" />
	</div>
	<!--log1-->
	<div class="col-md-4">
		<img src="img/log2.jpg" width="200px" />

	</div>
	<div class="col-md-4" style="padding-top: 30px;">
		
		<c:if test="${not empty sessionScope.customer }">
		  <a href="#">当前用户:${sessionScope.customer.username}</a>
		  <a href="Logout">注销</a>
		  <a href="cart.jsp">购物车</a>
		</c:if>
		<c:if test="${ empty customer }">
		    <a href="login.jsp">登录</a> 
			<a href="register.jsp ">注册</a> 
	    </c:if>
	</div>
</div>
<!--创建menuDIV--导航条-->
<div class="container">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand active" href="index.jsp">首页<span class="sr-only">(current)</span></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				    <c:forEach var="kind" items="${sessionScope.listKind}">
				      <li><a href="product_list_by_kid.jsp?kid=${kind.id}">${kind.kName}</a></li>
				    </c:forEach>
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
