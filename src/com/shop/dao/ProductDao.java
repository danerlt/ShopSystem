package com.shop.dao;

import java.util.ArrayList;
import com.shop.domain.Product;
import com.shop.utils.DBUtil;

public class ProductDao extends DBUtil {
	/**
	 * 插入一个product对象
	 * 
	 * @param cust
	 * @return
	 */
	public boolean insert(Product p) {
		String sql = "insert into product(pName,pDesc,pNum,pubTime,pKeepTime,pImage,kId,iPrice,mPrice,isHot,isShow) values(?,?,?,?,?,?,?,?,?,?,?)";
		Object[] params = { p.getpName(),p.getpDesc(),p.getpNum(),p.getPubTime(),p.getpKeepTime(),p.getpImage(),p.getkId(),p.getiPrice(),p.getmPrice(),p.getIsHot(),p.getIsShow()};
		try {
			int n = this.doUpdate(sql, params);
			if (n > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}

		return false;
	}

	/**
	 * 按照ID删除商品
	 * 
	 * @param id 用户ID
	 * @return
	 */
	public boolean delete(int id) {
		String sql = "delete product where id="+id;
		try {
			int n = this.doUpdate(sql);
			if (n > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return false;
	}
	/**
	 * 按照ID删除用户
	 * 
	 * @param name 用户名
	 * @return
	 */
	public boolean delete(String pname) {
		String sql = "delete product where pName="+pname;
		try {
			int n = this.doUpdate(sql);
			if (n > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return false;
	}

//	/**
//	 * 修改用户
//	 * 
//	 * @param p
//	 * @return
//	 */
//	public boolean update(Product p) {
//		String sql = "update product set username=?,password=?,email=?,tel=?,sex=?,level=?,score=? where id=?";
//		Object[] params = { p.getUsername(),p.getPassword(),p.getEmail(),p.getTel(),p.getSex(),p.getLevel(),p.getScore(),p.getId()};
//		try {
//			int n = this.doUpdate(sql, params);
//			if (n > 0) {
//				return true;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			this.close();
//		}
//		return false;
//	}
//
//	/**
//	 * 按照Name查找用户
//	 * 
//	 * @param id 用户ID 
//	 * @return
//	 */
//	public Product find(int id) {
//		String sql = "select * from product where id = "+id;
//		try {
//			this.rs = this.doQuery(sql);
//			if (rs.next()) {
//				Product p = new Product();
//				p.setId(rs.getInt(1));
//				p.setUsername(rs.getString(2));
//				p.setPassword(rs.getString(3));
//				p.setEmail(rs.getString(4));
//				p.setTel(rs.getString(5));
//				p.setSex(rs.getString(6));
//				p.setLevel(rs.getInt(7));
//				p.setScore(rs.getInt(8));
//				return c;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			this.close();
//		}
//		return null;
//	}
//
//	/**
//	 * 按照Name查找用户
//	 * 
//	 * @param name 用户名
//	 * @return
//	 */
//	public Product find(String name) {
//		String sql = "select * from product where username =?";
//		String[] params={name} ;
//		try {
//			this.rs = this.doQuery(sql,params);
//			if (rs.next()) {
//				Product p = new Product();
//				p.setId(rs.getInt(1));
//				p.setUsername(rs.getString(2));
//				p.setPassword(rs.getString(3));
//				p.setEmail(rs.getString(4));
//				p.setTel(rs.getString(5));
//				p.setSex(rs.getString(6));
//				p.setLevel(rs.getInt(7));
//				p.setScore(rs.getInt(8));
//				return c;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			this.close();
//		}
//		return null;
//	}
//	/**
//	 * 按照name和password查找用户
//	 * 
//	 * @param name 用户名
//	 * @param password 密码
//	 * @return 找到用户就返回这个用户，找不到返回null
//	 */
//	public Product find(String name, String password) {
//		String sql = "select password from product where username =?";
//		String[] params = { name };
//		try {
//			this.rs = this.doQuery(sql, params);
//
//			if (rs.next()) {
//				String pwd = rs.getString(1);// 获取数据库中的cust_pwd
//				if (pwd.equals(password)) {
//					Product p = new Product();
//					p.setId(rs.getInt(1));
//					p.setUsername(rs.getString(2));
//					p.setPassword(rs.getString(3));
//					p.setEmail(rs.getString(4));
//					p.setTel(rs.getString(5));
//					p.setSex(rs.getString(6));
//					p.setLevel(rs.getInt(7));
//					p.setScore(rs.getInt(8));
//					return c;
//				}
//			} else {
//				return null;
//			}
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			this.close();
//		}
//		return null;
//	}
//
//	/**
//	 * 查找所有用户
//	 * 
//	 * @return
//	 */
//	public ArrayList<Product> findAll() {
//		String sql = "select * from product ";
//		ArrayList<Product> list = new ArrayList<Product>();
//		String[] params = null;
//		try {
//			this.rs = this.doQuery(sql, params);
//			while (rs.next()) {
//				Product p = new Product();
//				p.setId(rs.getInt(1));
//				p.setUsername(rs.getString(2));
//				p.setPassword(rs.getString(3));
//				p.setEmail(rs.getString(4));
//				p.setTel(rs.getString(5));
//				p.setSex(rs.getString(6));
//				p.setLevel(rs.getInt(7));
//				p.setScore(rs.getInt(8));
//				list.add(c);
//			}
//			return list;
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			this.close();
//		}
//		return null;
//	}
//
//	public static void main(String[] args) {
//	}
//
}
