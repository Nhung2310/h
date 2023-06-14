package com.khachhang.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.tagext.TryCatchFinally;

import com.DAO.KhachHangDaoImpl;
import com.DB.DBConnect;
import com.entity.KhachHang;

@WebServlet("/update_profile")
public class UpdateProfile extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			int id=Integer.parseInt(req.getParameter("idKhachHang"));
	      
			String hoVaTen = req.getParameter("hoVaTen");
            String diaChiKhachHang = req.getParameter("diaChiKhachHang");
			
			String dienThoai = req.getParameter("dienThoai");
			String email = req.getParameter("email");
			String matKhau = req.getParameter("matKhau");
			
			KhachHang kh=new KhachHang();
			kh.setIdKhachHang(id);
			kh.setHoVaTen(hoVaTen);
			kh.setDiaChi(diaChiKhachHang);
			kh.setSDT(dienThoai);
			kh.setDiaChiEmail(email);
			
			HttpSession session=req.getSession();
			KhachHangDaoImpl dao=new KhachHangDaoImpl(DBConnect.getConn());
			
			boolean f=dao.checkPasword(id, matKhau);
			if(f) {
				
				boolean f2=dao.updateProfile(kh);
				
				if(f2) {
					session.setAttribute("succMsg","Thay đổi thông tin thành công");
					resp.sendRedirect("edit_profile.jsp");
					
				}else {
					session.setAttribute("faileMsg","Có lỗi, vui lòng thử lại vào lúc sau");
					resp.sendRedirect("edit_profile.jsp");
					
				}
				
			}else {
				session.setAttribute("faileMsg","Mật khẩu của bạn không đúng");
				resp.sendRedirect("edit_profile.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
