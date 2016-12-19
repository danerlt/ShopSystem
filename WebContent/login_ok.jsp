<%@ page language="java" 
import="java.util.*"  
import="com.shop.dao.*" 
import="com.shop.domain.*"  
import="com.shop.utils.*" 
import="java.sql.*"
import="java.io.FileReader"
import="java.io.Reader"
import="java.sql.Connection"
import="java.sql.DriverManager"
import="java.sql.PreparedStatement"
import="java.sql.ResultSet"
import="java.sql.Statement"
import="java.util.Properties"

pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
</html>
<body>
<%
//连接数据库
String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=ShopSystem";
String username="sa";
String password="54826admin";
Class.forName(driver);
//返回连接
Connection conn=DriverManager.getConnection(url,username,password);

response.setContentType("text/html");
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String cust_id=request.getParameter("cust_id");
String cust_pwd=request.getParameter("cust_pwd");

out.print(cust_id+"  "+cust_pwd);
CustomerDao cd=new CustomerDao();
Customer c=new Customer();
c=cd.find(cust_id);

if(cust_id.equals(c.getId())){
	out.print("存在该用户");
	if(cust_pwd.equals(c.getPwd().trim())){
		out.print("登录成功");
	}
	else{
		out.print("密码错误");
	}
}
else{
	out.print("不存在该用户");
}




%>
</body>