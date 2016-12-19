package com.shop.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.domain.Customer;
import com.shop.utils.DBUtil;

public class CustomerDao extends DBUtil{
	/**
	 * 插入一个customer对象
	 * @param cust
	 * @return
	 */
	public boolean insert(Customer c){
		Connection conn=DBUtil.getConnection();
		String sql="insert into customer values(?,?,?,?,?,?,?,?,?,?)";
		String[] params={
				c.getId(),
				c.getPwd(),
				c.getName(),
				c.getAddr(),
				c.getEmail(),
				c.getZip(),
				c.getTel(),
				c.getSex(),
				String.valueOf(c.getLevel()),
				String.valueOf((c.getScore()))
				};
		try {
			this.pstmt=conn.prepareStatement(sql);
			int n=this.doUpdate(sql, params);
			if(n>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return false;
	}
	/**
	 * 按照ID删除用户
	 * @param id
	 * @return
	 */
	public boolean delete(String id){
		Connection conn=DBUtil.getConnection();
		String sql="delete customer where cust_id=?";
		String [] params={id};
		try {
			this.pstmt=conn.prepareStatement(sql);
			int n=this.doUpdate(sql,params);
			if(n>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return false;
	}
	/**
	 * 修改用户
	 * @param cust
	 * @return
	 */
	public boolean update(Customer c){
		Connection conn=DBUtil.getConnection();
		String sql="update customer set cust_pwd=?,cust_name=?,addr=?,email=?,zip=?,tel=?,sex=?,cust_level=?,cust_sco=? where cust_id=?";
		String [] params={
				c.getPwd(),
				c.getName(),
				c.getAddr(),
				c.getEmail(),
				c.getZip(),
				c.getTel(),
				c.getSex(),
				String.valueOf(c.getLevel()),
				String.valueOf((c.getScore())),
				c.getId()
				};
		try {
			this.pstmt=conn.prepareStatement(sql);
			int n=this.doUpdate(sql,params);
			if(n>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return false;
	}
	/**
	 * 按照ID查找用户
	 * @param id
	 * @return
	 */
	public Customer find(String id){
		Connection conn=DBUtil.getConnection();
		String sql="select * from customer where cust_id=?";
		String [] params={id};
		try {
			this.pstmt=conn.prepareStatement(sql);
			this.rs=this.doQuery(sql,params);
			if(rs.next()){
				Customer c=new Customer();
				c.setId(rs.getString(1));
				c.setPwd(rs.getString(2));
				c.setName(rs.getString(3));
				c.setAddr(rs.getString(4));
				c.setEmail(rs.getString(5));
				c.setZip(rs.getString(6));
				c.setTel(rs.getString(7));
				c.setSex(rs.getString(8));
				c.setLevel(rs.getInt(9));
				c.setScore(rs.getInt(10));
				return c;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return null;
	}
	/**
	 * 查找所有用户
	 * @return
	 */
	public ArrayList<Customer>findAll(){
		Connection conn=DBUtil.getConnection();
		String sql="select * from customer ";
		ArrayList<Customer> list=new ArrayList<Customer>();
		String [] params=null;
		try {
			this.pstmt=conn.prepareStatement(sql);
			this.rs=this.doQuery(sql,params);
			while(rs.next()){
				Customer c=new Customer();
				c.setId(rs.getString(1));
				c.setPwd(rs.getString(2));
				c.setName(rs.getString(3));
				c.setAddr(rs.getString(4));
				c.setEmail(rs.getString(5));
				c.setZip(rs.getString(6));
				c.setTel(rs.getString(7));
				c.setSex(rs.getString(8));
				c.setLevel(rs.getInt(9));
				c.setScore(rs.getInt(10));
				list.add(c);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return null;
	}
	
	public static void main(String[] args){
		Connection conn=DBUtil.getConnection();
		Customer u=new Customer();
		u.setId("3");
		u.setPwd("123456");
//		u.setName("bass");
//		u.setAddr("北京市");
		u.setEmail("bass@shop.com");
//		u.setZip("675565");
//		u.setTel("1399833992");
//		u.setSex("男");
//		u.setScore(600);
//		
		CustomerDao cd=new CustomerDao();
		//System.out.println(cd.insert(u));
//		cd.delete("3");
//		cd.update(u);
		//System.out.println(cd.find("1"));
//		System.out.println(cd.findAll().toString());
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
}
