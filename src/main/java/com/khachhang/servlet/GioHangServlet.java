package com.khachhang.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.GioHangDAOImpl;
import com.DAO.SPDAOImpl;
import com.DB.DBConnect;
import com.entity.GioHang;
import com.entity.SanPham;

@WebServlet("/giohang")
public class GioHangServlet  extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			int idsan_pham=Integer.parseInt(req.getParameter("idsp"));
			int idkhachhang=Integer.parseInt(req.getParameter("idkh"));
			
		  SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
		  SanPham s=dao.getSPByID(idsan_pham);
		  
		  GioHang g=new GioHang();
		  
		  g.setIdsan_pham(idsan_pham);
		  g.setIdkhachhang(idkhachhang);
		  g.setTenNuocHoa(s.getTenNuocHoa());
		  g.setTenThuongHieu(s.getTenthuongHieu());
		  g.setGia(s.getGiaBan());
		  g.setTong_tien(s.getGiaBan());
		  
		  GioHangDAOImpl dao2=new GioHangDAOImpl(DBConnect.getConn());
		  
		  boolean f=dao2.themGioHang(g);
		  
		  HttpSession session=req.getSession();
		  
		  
		  if(f) {
			  session.setAttribute("addCart", "Sản phẩm đã được thêm vào giỏ");
			  resp.sendRedirect("hang_moi_ve.jsp");
		  }
		  else {
			  session.setAttribute("failed", "Đã xảy ra lỗi nào đó. Thêm vào giỏ không thành công");
			  resp.sendRedirect("hang_moi_ve.jsp");
		  }
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
