package com.shop.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.shop.dao.AdminDao;
import com.shop.domain.Admin;
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String username = request.getParameter("username").trim();
			String password = request.getParameter("password").trim();
			AdminDao ad = new AdminDao();
			Admin admin = ad.find(username, password);
			if( admin != null) {
				//查找到用户
				request.getSession().setAttribute("admin", admin);
				response.sendRedirect("/ShopSystem/admin/index.jsp");
				return;
			}else {
				System.out.println("登录失败！");
			}

		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
