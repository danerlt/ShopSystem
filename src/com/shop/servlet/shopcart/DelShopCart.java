package com.shop.servlet.shopcart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dao.ShopCartDao;

/**
 */
@WebServlet("/DelShopCart")
public class DelShopCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelShopCart() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  try{
		  String param = request.getParameter("id");
		  int id = 0 ;
		  if(param != null && param.equals("")) {
			  id = Integer.parseInt(param);
		  }
		  ShopCartDao scd = new ShopCartDao();
		  boolean isSucess = scd.delete(id);
		  if(isSucess == true){
			  response.sendRedirect("/ShopSystem/cart.jsp");
			  return;
		  }else{
			  
		  }
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
