package com.khachhang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.SPDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete_pass_sp")
public class XoaSPPass  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			String email=req.getParameter("email");
			
			int id=Integer.parseInt(req.getParameter("idsp"));
			
			SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
			
			boolean f=dao.passSpDelete(email,"pass",id);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg","Sản phẩm pass đã được xóa khỏi giỏ hàng");
				resp.sendRedirect("san_pham_pass.jsp");
				
			}else {
				session.setAttribute("succMsg","Có lỗi, vui lòng thử lại vào lúc sau");
				resp.sendRedirect("san_pham_pass.jsp");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}}
