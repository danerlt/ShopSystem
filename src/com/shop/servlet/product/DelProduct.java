package com.shop.servlet.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.AdminDao;
import com.shop.dao.ProductDao;

public class DelProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelProduct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			String parma = request.getParameter("id");
			int id = Integer.parseInt(parma);
			ProductDao pd = new ProductDao();
			boolean delsucess = pd.delete(id);
			if(delsucess == true){
				out.println("delete admin sucess!");
			}else{
				out.println("delete admin failed!");
			}
			String stayTime = "3000";
			String URL = "listAdmin.jsp";
			String content=stayTime+";URL="+URL;
			response.setHeader("REFRESH",content); 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
