package com.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.AdminDao;
import com.shop.domain.Admin;
import com.shop.utils.DBUtil;
public class EditAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditAdminServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			Admin a = new Admin();
			AdminDao ad = new AdminDao();
			String username =  request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			int level = Integer.parseInt(request.getParameter("level"));
			
			a.setUsername(username);
			a.setPassword(password);
			a.setEmail(email);
			a.setLevel(level);
			
			boolean isUpdate = ad.update(a);
			if(isUpdate == true){
				out.println("update admin sucess!");
			}else {
				out.println("update admin failed!");
			}
			String stayTime = "3000";
			String URL = "listAdmin.jsp";
			String content=stayTime+";URL="+URL;
			response.setHeader("REFRESH",content); 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
