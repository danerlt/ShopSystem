package com.shop.servlet;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.shop.dao.*;
import com.shop.domain.*;
public class RegisteServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		try{
		response.setContentType("text/xml;charset=utf-8");  
		PrintWriter out = response.getWriter();  
		Customer c = new Customer();
		CustomerDao cd = new CustomerDao();
		
		String cust_name = request.getParameter("cust_name").trim();
		System.out.println(cust_name);
		if(cd.find(cust_name) != null){
			//该用户已经被注册
			out.print("PASS");
			out.close();
			System.out.print("PASS");
			response.sendRedirect("login.jsp");
		    //RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		    //rd.forward(request, response);
			return ;
		}
		
		String cust_pwd = request.getParameter("cust_pwd").trim();
		String email = request.getParameter("email").trim();
		
	
		c.setName(cust_name);
		c.setPwd(cust_pwd);
		c.setEmail(email);
		
		boolean flag = cd.insert(c);
		if(flag == true){
		    out.print("YES");
		    out.close();
		    System.out.print("YES");
		    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		    rd.forward(request, response);
		}else {
			out.print("NO");
			out.close();
			System.out.println("NO");
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		doGet(request,response);
	}
	public void doContinueGet(HttpServletRequest request,HttpServletResponse response){
		
	}
}
