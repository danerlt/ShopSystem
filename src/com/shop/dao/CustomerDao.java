package com.shop.dao;

import java.util.ArrayList;

import com.shop.domain.Customer;
import com.shop.utils.DBUtil;

public class CustomerDao extends DBUtil {
	/**
	 * 插入一个customer对象
	 * 
	 * @param cust
	 * @return
	 */
	public boolean insert(Customer c) {
		String sql = "insert into customer(cust_pwd,cust_name,addr,email,zip,tel,sex,cust_level,cust_sco) values(?,?,?,?,?,?,?,?,?)";
		String[] params = { c.getPwd(), c.getName(), c.getAddr(), c.getEmail(), c.getZip(), c.getTel(), c.getSex(),
				String.valueOf(c.getLevel()), String.valueOf((c.getScore())) };
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
	 * 按照ID删除用户
	 * 
	 * @param id
	 * @return
	 */
	public boolean delete(String id) {
		String sql = "delete customer where cust_id=?";
		String[] params = { id };
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
	 * 修改用户
	 * 
	 * @param cust
	 * @return
	 */
	public boolean update(Customer c) {
		String sql = "update customer set cust_pwd=?,cust_name=?,addr=?,email=?,zip=?,tel=?,sex=?,cust_level=?,cust_sco=? where cust_id=?";
		String[] params = { c.getPwd(), c.getName(), c.getAddr(), c.getEmail(), c.getZip(), c.getTel(), c.getSex(),
				String.valueOf(c.getLevel()), String.valueOf((c.getScore())), String.valueOf(c.getId()) };
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
	 * 按照Name查找用户
	 * 
	 * @param id
	 * @return
	 */
	public Customer find(int id) {
		String sql = "select * from customer where cust_name = "+id;
		try {
			this.rs = this.doQuery(sql);
			if (rs.next()) {
				Customer c = new Customer();
				c.setId(rs.getInt(1));
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
		} finally {
			this.close();
		}
		return null;
	}

	/**
	 * 按照Name查找用户
	 * 
	 * @param name
	 * @return
	 */
	public Customer find(String name) {
		String sql = "select * from customer where cust_name = ?";
		String[] params = {name};
		try {
			this.rs = this.doQuery(sql,params);
			if (rs.next()) {
				Customer c = new Customer();
				c.setId(rs.getInt(1));
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
		} finally {
			this.close();
		}
		return null;
	}
	/**
	 * 按照name和password查找用户
	 * 
	 * @param name 用户名
	 * @param password 密码
	 * @return 找到用户就返回这个用户，找不到返回null
	 */
	public Customer find(String name, String password) {
		String sql = "select * from customer where cust_name =?";
		String[] params = { name };
		try {
			this.rs = this.doQuery(sql, params);

			if (rs.next()) {
				String pwd = rs.getString(2);// 获取数据库中的cust_pwd
				if (pwd.equals(password)) {
					Customer c = new Customer();
					c.setId(rs.getInt(1));
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
			} else {
				return null;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}

	/**
	 * 查找所有用户
	 * 
	 * @return
	 */
	public ArrayList<Customer> findAll() {
		String sql = "select * from customer ";
		ArrayList<Customer> list = new ArrayList<Customer>();
		String[] params = null;
		try {
			this.rs = this.doQuery(sql, params);
			while (rs.next()) {
				Customer c = new Customer();
				c.setId(rs.getInt(1));
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
		} finally {
			this.close();
		}
		return null;
	}

	public static void main(String[] args) {
		Customer u = new Customer();
		// u.setId("3");
		u.setPwd("123456");
		u.setName("bass");
		// u.setAddr("北京市");
		u.setEmail("bass@shop.com");
		// u.setZip("675565");
		// u.setTel("1399833992");
		// u.setSex("男");
		// u.setScore(600);
		//
		CustomerDao cd = new CustomerDao();
		System.out.println((cd.find("李滔") != null));
		//cd.insert(u);
		// System.out.println(cd.insert(u));
		// cd.delete("3");
		// cd.update(u);
		// System.out.println(cd.find("1"));
		// System.out.println(cd.findAll().toString());
	}

}
