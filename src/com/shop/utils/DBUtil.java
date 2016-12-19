package com.shop.utils;

import java.io.FileReader;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;//配置文件



public class DBUtil {

	private static String driver;
	private static String url;
	private static String username;
	private static String password;
	public Connection conn=null;
	public PreparedStatement pstmt=null;
	public ResultSet rs=null;
	
	//通过配置文件设置driver,username,username,password
	static{
		Properties  prop=new Properties();
		Reader in;
		try {
			in = new FileReader("./src/config.properties");
			prop.load(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		driver=prop.getProperty("driver");
		url=prop.getProperty("url");
		username=prop.getProperty("username");
		password=prop.getProperty("password");
	}
	public DBUtil(){
		
	}
	/**
	 * 连接数据库
	 * @return 
	 */
	public static Connection getConnection(){
		try {
			Class.forName(driver);
			//返回连接
			return DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 数据库查询
	 * @param sql 预处理的SQL语句
	 * @param params 预处理中的SQL语句中的参数
	 * @return 查询后的结果集
	 */
	public ResultSet executeQuery(String sql,String[] params){
		try {
			conn=DBUtil.getConnection();
			//获取PreparedStatement对象
			pstmt=conn.prepareStatement(sql);
			//设置pstmt的参数
			if(params!=null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setString(i+1,params[i]);
				}
			}
			//执行查询
			rs=pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
	/**
	 * 执行数据库更新操作(DDL和DML)
	 * @param sql 预处理的SQL语句
	 * @param params 预处理中的SQL语句中的参数
	 * @return 受影响的行数
	 */
	public int executeUpdate(String sql,String[] params){
		int n=0;
		
		//取消Connection的自动提交
		try {
			conn=DBUtil.getConnection();
			conn.setAutoCommit(false);
		//获取PreparedStatement对象
		pstmt=conn.prepareStatement(sql);
		//设置pstmt的参数
		//设置pstmt的参数
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				pstmt.setString(i+1,params[i]);
			}
		}
		//执行更新
		n=pstmt.executeUpdate();
		conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			e.printStackTrace();
		}
		return n;
	}
	/**
	 * 关闭数据库的连接，释放资源
	 */
	public void release(Statement stmt,Connection conn){
		if(stmt!=null){
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			stmt=null;
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			conn=null;
		}
		
	}
	/**
	 * 关闭数据库的连接，释放资源
	 */
	public void release(ResultSet rs,Statement stmt,Connection conn){
		if(rs!=null){
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			rs=null;
		}
		release(stmt,conn);
	}
}