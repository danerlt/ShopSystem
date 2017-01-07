package com.shop.dao;

import java.util.ArrayList;

import com.shop.domain.Kind;
import com.shop.utils.DBUtil;

public class KindDao extends DBUtil{
	/**
	 * 插入一个Kind对象
	 * 
	 * @param Kind
	 * @return
	 */
	public boolean insert(Kind k) {
		String sql = "insert into kind values(?,?)";
		Object[] params = {k.getId(),k.getkName()};
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
	 * 按照id删除分类
	 * 
	 * @param id
	 * @return true：删除成功;false： 删除失败
	 */
	public boolean delete(int id) {
		String sql = "delete kind where id=?";
		Object[] params = { id};
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
	 * 修改分类信息
	 * 
	 * @param k
	 * @return
	 */
	public boolean update(Kind k) {
		String sql = "update kind set id=?,kName=?";
		Object[] params = { k.getId(),k.getkName() };
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
	 * 按照kname查找分类信息
	 * 
	 * @param kname
	 * @return
	 */
	public Kind find(String kname) {
		String sql = "select * from kind where kName = ?";
        String[] params = {kname};
		try {
			this.rs = this.doQuery(sql,params);
			if (rs.next()) {
				Kind k = new Kind();
				k.setId(rs.getInt(1));
				k.setkName(rs.getString(2));
				return k;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}

	/**
	 * 按照id查找分类
	 * 
	 * @param id 分类id
	 * @return 找到分类信息就返回这个分类，找不到返回null
	 */
	public Kind find(int id) {
		String sql = "select * from Kind where id =?";
		Object[] params = { id};
		try {
			this.rs = this.doQuery(sql, params);
			this.rs = this.doQuery(sql,params);
			if (rs.next()) {
				Kind k = new Kind();
				k.setId(rs.getInt(1));
				k.setkName(rs.getString(2));
				return k;
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
	 * 查找所有分类信息
	 * 
	 * @return
	 */
	public ArrayList<Kind> findAll() {
		String sql = "select * from kind ";
		ArrayList<Kind> list = new ArrayList<Kind>();
		try {
			this.rs = this.doQuery(sql);
			while (rs.next()) {
				Kind k = new Kind();
				k.setId(rs.getInt(1));
				k.setkName(rs.getString(2));
				list.add(k);
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

