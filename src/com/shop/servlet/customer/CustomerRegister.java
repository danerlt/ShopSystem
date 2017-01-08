package com.shop.servlet.customer;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.utils.DBUtil;

public class CustomerRegister extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			response.setContentType("text/xml;charset=utf-8");
			PrintWriter out = response.getWriter();
			DBUtil db = new DBUtil();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String tel = request.getParameter("tel");

			
			String sql = "insert into customer(username,password,tel,sex)values(?,?,?,?)";
			Object[] params = { username, password, tel, "保密" };
			
			int n = db.doUpdate(sql, params);
			System.out.println(n);
			if (n > 0) {
				response.sendRedirect("login.jsp");
			} else {
				out.println("<script>alert('注册失败,该用户名已存在。')</script>");
			}
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
