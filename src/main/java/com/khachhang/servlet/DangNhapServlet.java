package com.khachhang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.KhachHangDaoImpl;
import com.DB.DBConnect;
import com.entity.KhachHang;

@WebServlet("/dangnhap")
public class DangNhapServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			KhachHangDaoImpl dao=new KhachHangDaoImpl(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			String tenDangNhap=req.getParameter("tenDangNhap");
			String matKhau=req.getParameter("matKhau");
			
			
			//System.out.println(tenDangNhap+" "+matKhau);
		if("admin".equals(tenDangNhap)&&"admin".equals(matKhau)) {
		KhachHang kh=new KhachHang();
		kh.setTenDangNhap("Admin");
		session.setAttribute("khachhangobj", kh);
			
			resp.sendRedirect("admin/home.jsp");
		}
		else {
			
			KhachHang kh=dao.dangnhap(tenDangNhap, matKhau);
			
			if(kh!=null) {
				session.setAttribute("khachhangobj", kh);
				resp.sendRedirect("index.jsp"); 
			}
			else {
				session.setAttribute("faileMSsg", "Mật khẩu hoặc tên đăng nhập không chính xác");
				resp.sendRedirect("dangnhap.jsp");
			}}
			} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}}
