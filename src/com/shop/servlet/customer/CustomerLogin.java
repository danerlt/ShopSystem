package com.shop.servlet.customer;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.dao.*;
import com.shop.domain.*;
public class CustomerLogin extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		try{
	    PrintWriter out = response.getWriter();
		String username=request.getParameter("username").trim();
		String password=request.getParameter("password").trim();
		
		CustomerDao cd = new CustomerDao();
		
		Customer c = cd.find(username, password);
		if(c != null ){
		  HttpSession session = request.getSession();
		  session.setAttribute("customer", c);
		  response.sendRedirect("index.jsp");
		}else{
			//用户名密码不匹配
			out.println("<script>alert(用户名密码不匹配！);</script>");
			 response.sendRedirect("login.jsp");
		}
		out.close();
		
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
