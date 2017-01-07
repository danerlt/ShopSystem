package com.shop.servlet.customer;

import javax.servlet.RequestDispatcher;
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
		String cust_name=request.getParameter("cust_name").trim();
		String cust_pwd=request.getParameter("cust_pwd").trim();
		
		CustomerDao cd = new CustomerDao();
		
		Customer c = cd.find(cust_name, cust_pwd);
		if(c != null ){
		  HttpSession session = request.getSession();
		  session.setAttribute("customer", c);
		}else{
			//用户名密码不匹配
			System.out.println("用户名密码不匹配！");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
