package com.shop.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.*;
import com.shop.domain.*;
public class Register extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		String cust_id=request.getParameter("cust_id");
		String cust_pwd=request.getParameter("cust_pwd");
		String email=request.getParameter("email");
		Customer c=new Customer();
		c.setId(cust_id);
		c.setPwd(cust_pwd);
		c.setEmail(email);
		CustomerDao cd=new CustomerDao();
		cd.insert(c);
		System.out.println(cd.findAll());
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
}
