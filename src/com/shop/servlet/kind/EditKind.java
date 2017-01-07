package com.shop.servlet.kind;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.utils.DBUtil;

public class EditKind extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public EditKind() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			int id = Integer.parseInt(request.getParameter("id"));
			String kname = request.getParameter("kName");
			
			DBUtil db = new DBUtil();
			String sql = "update kind set kName=? where id=?";
			Object[] params = {kname,id};
			int n = db.doUpdate(sql, params);
			if(n > 0) {
				out.println("edit kind sucess!");
			}else {
				out.println("edit kind failed!");
			}
			String stayTime = "3000";
			String URL = "listKind.jsp";
			String content=stayTime+";URL="+URL;
			response.setHeader("REFRESH",content); 
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
