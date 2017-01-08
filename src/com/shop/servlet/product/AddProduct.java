package com.shop.servlet.product;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddProduct() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			String pName = request.getParameter("pName");
			String pDesc = request.getParameter("pDesc");
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			//Timestamp  pubTime = new Timestamp(request.getParameter("pubTime"));
			int pKeepTime = Integer.parseInt(request.getParameter("pKeepTime"));
			String pImage = request.getParameter("pImage");
			int kId = Integer.parseInt(request.getParameter("kId"));
			BigDecimal iPrice = new BigDecimal(Double.valueOf(request.getParameter("iPrice")));
			BigDecimal mPrice = new BigDecimal(Double.valueOf(request.getParameter("mPrice")));
			String isHot = request.getParameter("isHot");
			String isShow = request.getParameter("isShow");
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
