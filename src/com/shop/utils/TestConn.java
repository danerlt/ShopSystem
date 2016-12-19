package com.shop.utils;

import java.sql.ResultSet;

public class TestConn {

	public static void main(String[] args) {
		try {
			DBUtil db = new DBUtil();
			ResultSet rs = null;
			String  sql = "select * from customer";
			rs = db.doQuery(sql);
			
			while (rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				System.out.println(rs.getString(4));
				System.out.println(rs.getString(5));
				System.out.println(rs.getString(6));
				System.out.println(rs.getString(7));
				System.out.println(rs.getString(8));
				System.out.println(rs.getString(9));
				System.out.println(rs.getString(10));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
