package com.admin.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.SPDAOImpl;
import com.DB.DBConnect;
import com.entity.SanPham;

@WebServlet("/editsp")

public class SPEditServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			String tenNuocHoa=req.getParameter("tensp");
			String tenThuongHieu=req.getParameter("tenthuonghieu");
			
			Double giaGoc=Double.parseDouble(req.getParameter("giagoc"));
			Double giaBan=Double.parseDouble(req.getParameter("giaban"));
			Double dungTich=Double.parseDouble(req.getParameter("dungtich"));
			String trangThai=req.getParameter("trangthai");
			
			SanPham s=new SanPham();
			s.setIdNuoc_Hoa(id);
			s.setTenNuocHoa(tenNuocHoa);
			s.setTenthuongHieu(tenThuongHieu);
			
			s.setGiaGoc(giaGoc);
			s.setGiaBan(giaBan);
			s.setDungTich(dungTich);
			s.setTrangThai(trangThai);
			
			SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
			boolean f=dao.editcapnhatSP(s);
			
			HttpSession session =req.getSession();
			if(f) {
				
				session.setAttribute("succMsg","Cập nhật thành công");
				resp.sendRedirect("admin/all_sp.jsp");
			}
			else {

				session.setAttribute("faileMsg","Lỗi trên server, cập nhật không thành công");
				resp.sendRedirect("admin/all_sp.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
	
}
