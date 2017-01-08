package com.shop.servlet.product;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.shop.utils.DBUtil;

public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddProduct() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{ 
			
	        
			PrintWriter out = response.getWriter();
			String pName = request.getParameter("pName");
			String pDesc = request.getParameter("pDesc");
			int pNum = Integer.parseInt(request.getParameter("pNum"));
			String  pubTime = (request.getParameter("pubTime"));
			int pKeepTime = Integer.parseInt(request.getParameter("pKeepTime"));
			String pImage = request.getParameter("pImage");
			int kId = Integer.parseInt(request.getParameter("kId"));
			BigDecimal iPrice = new BigDecimal(Double.valueOf(request.getParameter("iPrice")));
			BigDecimal mPrice = new BigDecimal(Double.valueOf(request.getParameter("mPrice")));
			String isHot = request.getParameter("isHot");
			String isShow = request.getParameter("isShow");
			
			//为解析类提供配置信息  
	        DiskFileItemFactory factory = new DiskFileItemFactory();  
	        //创建解析类的实例  
	        ServletFileUpload sfu = new ServletFileUpload(factory);  
	        //开始解析  
	        
			String sql = "insert into product(pName,pDesc,pNum,pubTime,pKeepTime,pImage,kId,iPrice,mPrice,isHot,isShow) values(?,?,?,?,?,?,?,?,?,?,?)";
			Object[] params = {
			    pName, 
			    pDesc ,
				pNum,
				pubTime,
				pKeepTime,
				pImage,
				kId,
			    iPrice,
				mPrice ,
				isHot,
				isShow
			};
			DBUtil db = new DBUtil();
			int n = db.doUpdate(sql, params);
			if(n > 0){
				out.println("add Product sucess!");
			}else {
				out.println("add Product failed!");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
