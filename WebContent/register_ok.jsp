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
String email=request.getParameter("email");
CustomerDao cd=new CustomerDao();
Customer c=new Customer();
c.setId(cust_id);
c.setPwd(cust_pwd);
c.setEmail(email);

out.println(c);
out.print(cd.insert(c));

Customer c1=new Customer();
c1.setId("2");
c1.setPwd("1234");
c1.setEmail("c@shop.com");

out.println(c1);

out.print(cd.insert(c1));
try {
	conn.close();
} catch (SQLException e) {
	e.printStackTrace();
}
%>
</body>


