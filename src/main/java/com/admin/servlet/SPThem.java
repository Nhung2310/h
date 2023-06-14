package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.SPDAOImpl;
import com.DB.DBConnect;

import com.entity.SanPham;


@WebServlet("/them_sp")
@MultipartConfig
public class SPThem extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
	
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			String tenNuocHoa=req.getParameter("tensp");
			String tenThuongHieu=req.getParameter("tenthuonghieu");
			Date namSanXuat=Date.valueOf(req.getParameter("namsanxuat"));
			Double dungTich=Double.parseDouble(req.getParameter("dungtich"));
			Double giaGoc=Double.parseDouble(req.getParameter("giagoc"));
			Double giaBan=Double.parseDouble(req.getParameter("giaban"));
			Double soLuong=Double.parseDouble(req.getParameter("soluong"));
			String loaiNuocHoa=req.getParameter("loai");
			String trangThai=req.getParameter("trangthai");
			String xuatXu=req.getParameter("xuatxu");
			String mota=req.getParameter("mota");
			Part part=req.getPart("photo");
			String photo=part.getSubmittedFileName();//lay linh anh
		
SanPham n=new SanPham(tenNuocHoa,tenThuongHieu,namSanXuat,dungTich,giaGoc,giaBan,soLuong,loaiNuocHoa,trangThai,xuatXu,mota,photo,"admin");
			//System.out.println(n);
		SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
		
				
		boolean f=dao.themSP(n);
		
		HttpSession session=req.getSession();
		if(f)
		{
			// đưa file ảnh vào thư mục
			String path=getServletContext().getRealPath("")+"sp";
			//System.out.println(path);
			
			File file=new File(path);
			
			part.write(path+File.separator+photo);
			
             //
			
			session.setAttribute("succMsg","Thanh cong them" );
		    resp.sendRedirect("admin/them_sp.jsp");
		}else {
			session.setAttribute("faileMsg","Loi tren server khong them duoc san pham" );
		    resp.sendRedirect("admin/them_sp.jsp");
		}
		
			
	}catch (Exception e) {
		e.printStackTrace();
	}

	
	}
	
}