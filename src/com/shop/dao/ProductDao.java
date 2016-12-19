package com.shop.dao;

import java.sql.Connection;
import java.util.ArrayList;

import com.shop.domain.Product;
import com.shop.utils.DBUtil;

public class ProductDao extends DBUtil{
	public boolean insert(Product p){
		Connection conn=DBUtil.getConnection();
		String sql="insert into customer values(?,?,?,?,?,?,?,?,?)";
		String[] params={
				p.getProdID(),
				p.getName(),
				p.getKindID(),
				p.getSupID(),
				String.valueOf(p.getStorage()),
				String.valueOf(p.getProdDate()),
				String.valueOf(p.getKeepDate()),
				String.valueOf(p.getUnitPrice()),
				String.valueOf(p.getSupCount())
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
	public boolean delete(String id){
		Connection conn=DBUtil.getConnection();
		String sql="delete customer where prod_id=?";
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
	public boolean update(Product p){
		Connection conn=DBUtil.getConnection();
		String sql="update product set prod_name=?,kind_no=?,sup_no=?,storage=?,prod_date=?,keep_date=?,unit_price=?,supply_count=? where prod_id=?";
		String [] params={
				p.getName(),
				p.getKindID(),
				p.getSupID(),
				String.valueOf(p.getStorage()),
				String.valueOf(p.getProdDate()),
				String.valueOf(p.getKeepDate()),
				String.valueOf(p.getUnitPrice()),
				String.valueOf(p.getSupCount()),
				p.getProdID()
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
	public Product find(String id){
		Connection conn=DBUtil.getConnection();
		String sql="select * from product where prod_id=?";
		String [] params={id};
		try {
			this.pstmt=conn.prepareStatement(sql);
			this.rs=this.doQuery(sql,params);
			if(rs.next()){
				Product p=new Product();
				p.setProdID(rs.getString(1));
				p.setName(rs.getString(2));
				p.setKindId(rs.getString(3));
				p.setSupID(rs.getString(4));
				p.setStorage(rs.getInt(5));
				p.setProdDate(rs.getDate(6));
				p.setKeepDate(rs.getDate(7));
				p.setUnitPrice(rs.getDouble(8));
				p.setSupCount(rs.getInt(9));
				return p;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return null;
	}
	public ArrayList<Product> findAll(){
		Connection conn=DBUtil.getConnection();
		String sql="select * from product where prod_id";
		String [] params=null;
		try {
			this.pstmt=conn.prepareStatement(sql);
			this.rs=this.doQuery(sql,params);
			ArrayList<Product> list=new ArrayList<Product>();
			if(rs.next()){
				Product p=new Product();
				p.setProdID(rs.getString(1));
				p.setName(rs.getString(2));
				p.setKindId(rs.getString(3));
				p.setSupID(rs.getString(4));
				p.setStorage(rs.getInt(5));
				p.setProdDate(rs.getDate(6));
				p.setKeepDate(rs.getDate(7));
				p.setUnitPrice(rs.getDouble(8));
				p.setSupCount(rs.getInt(9));
				list.add(p);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			this.close();
		}
		return null;
	} 
	
}
