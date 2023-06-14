package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.SPDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class SPDeleteServlet  extends HttpServlet{

	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
     try {
    	 req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			int id=Integer.parseInt(req.getParameter("id"));
		
		SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
		boolean f=dao.deleteSp(id);
		
		HttpSession session =req.getSession();
		
		if(f) {
			
			session.setAttribute("succMsg","Xóa sản phẩm thành công");
			resp.sendRedirect("admin/all_sp.jsp");
		}
		else {

			session.setAttribute("faileMsg","Lỗi trên server, xóa không thành công");
			resp.sendRedirect("admin/all_sp.jsp");
		}
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	
}
