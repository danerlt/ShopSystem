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
	 * @param id 商品ID
	 * @return
	 */
	public boolean delete(int id) {
		String sql = "delete from product where id="+id;
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
	 * 按照ID删除商品
	 * 
	 * @param pname 商品名
	 * @return
	 */
	public boolean delete(String pname) {
		String sql = "delete from product where pName="+pname;
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
	 * 修改商品
	 * 
	 * @param p
	 * @return
	 */
	public boolean update(Product p) {
		String sql = "update product set pName=?,pDesc=?,pNum=?,pubTime=?,pKeepTime=?,pImage=?,kId=?,iPrice=?,mPrice=?,isHot=?,isShow=? where id=?";
		Object[] params = { 
				p.getpName(),
				p.getpDesc(),
				p.getpNum(),
				p.getPubTime(),
				p.getpKeepTime(),
				p.getpImage(),
				p.getkId(),
				p.getiPrice(),
				p.getmPrice(),
				p.getIsHot(),
				p.getIsShow(),
				p.getId()
				};
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
	 * 按照Name查找商品
	 * 
	 * @param id 商品ID 
	 * @return
	 */
	public Product find(int id) {
		String sql = "select * from product where id = "+id;
		try {
			this.rs = this.doQuery(sql);
			if (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				return p;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}

	/**
	 * 按照Name查找商品
	 * 
	 * @param name 商品名
	 * @return
	 */
	public Product find(String pname) {
		String sql = "select * from product where pName =?";
		String[] params={pname} ;
		try {
			this.rs = this.doQuery(sql,params);
			if (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				return p;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}
	/**
	 * 查找所有商品
	 * 
	 * @return
	 */
	public ArrayList<Product> findAll() {
		String sql = "select * from product order by id";
		ArrayList<Product> list = new ArrayList<Product>();
		String[] params = null;
		try {
			this.rs = this.doQuery(sql, params);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				list.add(p);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}
	/**
	 * 查找所有热销商品
	 * 
	 * @return
	 */
	public ArrayList<Product> findHot() {
		String sql = "select * from product where isHot = ? order by id";
		ArrayList<Product> list = new ArrayList<Product>();
		String[] params = {"是"};
		try {
			this.rs = this.doQuery(sql, params);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				list.add(p);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}
	/**
	 * 查找所有首页显示商品
	 * 
	 * @return
	 */
	public ArrayList<Product> findShow() {
		String sql = "select * from product where isShow = ? order by id";
		ArrayList<Product> list = new ArrayList<Product>();
		String[] params = {"是"};
		try {
			this.rs = this.doQuery(sql, params);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				list.add(p);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return null;
	}
	/**
	 * 查找所有首页显示商品
	 * 
	 * @return
	 */
	public ArrayList<Product> findByKid(int kid) {
		String sql = "select * from product where kId = ? order by id";
		ArrayList<Product> list = new ArrayList<Product>();
		Object[] params = {kid};
		try {
			this.rs = this.doQuery(sql, params);
			while (rs.next()) {
				Product p = new Product();
				p.setId(rs.getInt(1));
				p.setpName(rs.getString(2));
				p.setpDesc(rs.getString(3));
				p.setpNum(rs.getInt(4));
				p.setPubTime(rs.getTimestamp(5));
				p.setpKeepTime(rs.getInt(6));
				p.setpImage(rs.getString(7));
				p.setkId(rs.getInt(8));
				p.setiPrice(rs.getBigDecimal(9));
				p.setmPrice(rs.getBigDecimal(10));
				p.setIsHot(rs.getString(11));
				p.setIsShow(rs.getString(12));
				list.add(p);
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
