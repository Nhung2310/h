package com.khachhang.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.KhachHangDaoImpl;
import com.DB.DBConnect;
import com.entity.KhachHang;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

@WebServlet("/dangky")
public class DangKyServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          
		try {
			
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");

			
			String tenDangNhap = req.getParameter("tenDangNhap");
			String matKhau = req.getParameter("matKhau");
			String matKhauNhapLai = req.getParameter("matKhauNhapLai");
			String hoVaTen = req.getParameter("hoVaTen");
			String gioiTinh = req.getParameter("gioiTinh");
//			String ngaySinh = req.getParameter("ngaySinh");

			Date ngaySinh = Date.valueOf(req.getParameter("ngaySinh"));

			String diaChiKhachHang = req.getParameter("diaChiKhachHang");
			
			String dienThoai = req.getParameter("dienThoai");
			String email = req.getParameter("email");
			String dongYDieuKhoan = req.getParameter("dongYDieuKhoan");
			String dongYNhanMail = req.getParameter("dongYNhanMail");
			String submit = req.getParameter("submit");

//			System.out.println(tenDangNhap + " -  " + matKhau + " - " + matKhauNhapLai + " -  " + hoVaTen + " -  "
//					+ gioiTinh + " -  " + ngaySinh + " " + diaChiKhachHang + " -  " + diaChiMuaHang + " -  "
//					+ diaChiNhanHang + " -  " + dienThoai + " - " + email + " - " + dongYDieuKhoan + " - "
//					+ dongYNhanMail + " - " + submit + " - ");

			/*
			 * boolean result = false;
			 * 
			 * if (dongYNhanMail.equals("on")) { result = true; }
			 */

			boolean result = false;

			if (dongYNhanMail != null && dongYNhanMail.equals("on")) {
			    result = true;
			}

			
			
			KhachHang kh = new KhachHang();

			kh.setTenDangNhap(tenDangNhap);
			kh.setMatKhau(matKhau);
			kh.setHoVaTen(hoVaTen);
			kh.setGioiTinh(gioiTinh);
			kh.setNgaySinh(ngaySinh);
			kh.setDiaChi(diaChiKhachHang);
			
			kh.setSDT(dienThoai);
			kh.setDiaChiEmail(email);
			kh.setDangKhyNhanBangTin(result);

			HttpSession session=req.getSession();

			if (submit!=null) {
				
				KhachHangDaoImpl dao=new KhachHangDaoImpl(DBConnect.getConn());
				
				boolean f2=dao.checkKH(email);
				if(f2) {
					boolean f=dao.khachHangDangKy(kh);
					
					if(f) {
						session.setAttribute("succMgs","Đăng ký thành công");
						resp.sendRedirect("dangky.jsp");
					}else {
						session.setAttribute("succMgs","Có một số lỗi trên server, vui lòng thử lại sau");
						resp.sendRedirect("dangky.jsp");
					}
				}
				
			 else {
				session.setAttribute("faileMsg","Tài khoản gmail đã tồn tại, vui lòng dùng tài khoản khác");
				resp.sendRedirect("dangky.jsp");
			}
		}

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
