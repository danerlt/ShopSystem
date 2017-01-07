package com.shop.servlet.customer;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.CustomerDao;
import com.shop.domain.Customer;
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
			CustomerDao cd = new CustomerDao();
			Customer c = new Customer();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String tel = request.getParameter("tel");

			System.out.println(username);
			System.out.println(password);
			System.out.println(tel);
			
			String sql = "insert into customer(username,password,tel,sex)values(?,?,?,?)";
			Object[] params = { username, password, tel, "保密" };
			
			int n = db.doUpdate(sql, params);
			System.out.println(n);
			if (n > 0) {
				out.print("YES");
				out.close();
				System.out.print("YES");
			} else {
				out.print("NO");
				out.close();
				System.out.println("NO");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");//转发
		    dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
