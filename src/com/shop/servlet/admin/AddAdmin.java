package com.shop.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.utils.DBUtil;

public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddAdmin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("UTF-8");
			String username =  request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			int level = Integer.parseInt(request.getParameter("level"));
			PrintWriter out = response.getWriter();
			DBUtil db = new DBUtil();
			String sql = "insert into admin values(?,?,?,?)";
			Object[] params = {username,password,email,level};
			int n = db.doUpdate(sql, params);
			if(n > 0){
				out.println("add admin sucess!");
			}else {
				out.println("add admin failed!");
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
