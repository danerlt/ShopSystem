package com.shop.servlet.kind;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.utils.DBUtil;

public class AddKind extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddKind() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
        	String kName = request.getParameter("kName");
        	String sql = "insert into kind (kName) value(?)";
        	String[] params = {kName};
        	DBUtil db = new DBUtil();
        	int n =	db.doUpdate(sql, params);
        	if(n >0 ){
        		response.getWriter().println("add kind sucess.");
        	}else {
        		response.getWriter().println("add kind failed.");
        	}
        }catch(Exception e) {
        	e.printStackTrace();
        }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
