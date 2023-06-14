package com.khachhang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/dangxuat")
public class DangXuatServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			HttpSession session=req.getSession();
			session.removeAttribute("khachhangobj");
			
			HttpSession session1=req.getSession();
//			session.setAttribute("succMsg", "Đăng xuất thành công");
			resp.sendRedirect("dangnhap.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
