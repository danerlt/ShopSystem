<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="cmn-Hans-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登陆</title>
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
</head>
<body>
  <div class="container">
    <div class="col-md-4"></div>
    <div class="col-md-4">
       <form action="AdminLogin" method="post">
          <label for="">用户名：<input name="name" type="text" /></label><br/>
          <label for="">密码：<input name="password" type="password" /></label><br/>
          <input type="submit" value="登录"/>
       </form>
    </div>
    <div class="col-md-4"></div>
  </div>
</body>
</html>