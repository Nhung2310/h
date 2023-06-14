package com.khachhang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.GioHangDAOImpl;
import com.DB.DBConnect;

@WebServlet("/xoa_spkh")
public class XoaSPKhachHang extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
//		int idsan_pham=Integer.parseInt(req.getParameter("idsp"));
//		int idkhach_hang=Integer.parseInt(req.getParameter("idkh"));
//		int idgio_hang=Integer.parseInt(req.getParameter("idgh"));
		int idsan_pham=Integer.parseInt(req.getParameter("idsp").trim());
		int idkhach_hang=Integer.parseInt(req.getParameter("idkh").trim());
		int idgio_hang=Integer.parseInt(req.getParameter("idgh").trim());
		
		
		GioHangDAOImpl dao=new GioHangDAOImpl(DBConnect.getConn());
		boolean f=dao.xoaSP(idsan_pham,idkhach_hang,idgio_hang);
		
		HttpSession session=req.getSession();
		
		if(f) {
			session.setAttribute("succMsg","Sản phẩm đã được xóa khỏi giỏ hàng");
			resp.sendRedirect("cart.jsp");
			
		}else {
			session.setAttribute("faileMsg","Có lỗi, vui lòng thử lại vào lúc sau");
			resp.sendRedirect("cart.jsp");
			
		}
	
	}

	
}
