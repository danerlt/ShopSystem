package com.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.AdminDao;
import com.shop.domain.Admin;

public class QueryAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QueryAdmin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			String username = request.getParameter("username");
			PrintWriter out = response.getWriter();
			AdminDao ad = new AdminDao();
			Admin a = new Admin();
			a = ad.find(username);
			if (a != null) {
				request.setAttribute("Admin", a);
				out.println("sucess");
			}
			if (a == null) {
				out.println("not found");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
