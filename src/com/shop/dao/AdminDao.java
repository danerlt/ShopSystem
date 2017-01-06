package com.shop.dao;
import java.util.ArrayList;

import com.shop.domain.Admin;
import com.shop.utils.DBUtil;
public class AdminDao extends DBUtil{
	/**
	 * 插入一个admin对象
	 * 
	 * @param admin
	 * @return
	 */
	public boolean insert(Admin a) {
		String sql = "insert into admin values(?,?,?,?)";
		Object[] params = {a.getUsername(),a.getPassword(),a.getEmail(),a.getLevel()};
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
	 * 按照name删除用户
	 * 
	 * @param name 用户名
	 * @return true：删除成功;false： 删除失败
	 */
	public boolean delete(String name) {
		String sql = "delete admin where name=?";
		Object[] params = { name};
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
	 * @param a 
	 * @return
	 */
	public boolean update(Admin a) {
		String sql = "update admin set username=?,password=?,email=?,level=?";
		Object[] params = { a.getUsername(),a.getPassword(),a.getEmail(),a.getLevel() };
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
	public Admin find(String name) {
		String sql = "select * from admin where name = "+name;
		try {
			this.rs = this.doQuery(sql);
			if (rs.next()) {
				Admin a = new Admin();
				a.setUsername(rs.getString(1));
				a.setPassword(rs.getString(2));
				a.setEmail(rs.getString(3));
				a.setLevel(rs.getInt(3));
				return a;
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
	public Admin find(String name, String password) {
		String sql = "select * from admin where name =?";
		Object[] params = { name };
		try {
			this.rs = this.doQuery(sql, params);

			if (rs.next()) {
				String pwd = rs.getString(2);// 获取数据库中的password
				if (pwd.equals(password)) {
					Admin a = new Admin();
					a.setUsername(rs.getString(1));
					a.setPassword(rs.getString(2));
					a.setEmail(rs.getString(3));
					a.setLevel(rs.getInt(4));
					return a;
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
	public ArrayList<Admin> findAll() {
		String sql = "select * from admin ";
		ArrayList<Admin> list = new ArrayList<Admin>();
		try {
			this.rs = this.doQuery(sql);
			while (rs.next()) {
				Admin a = new Admin();
				a.setUsername(rs.getString(1));
				a.setPassword(rs.getString(2));
				a.setEmail(rs.getString(3));
				a.setLevel(rs.getInt(4));
				list.add(a);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}

    
}
