package com.khachhang.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.GioHangDAOImpl;
import com.DAO.SPOrderImpl;
import com.DB.DBConnect;
import com.entity.GioHang;
import com.entity.San_Pham_Order;
@WebServlet("/order")
public class OrderServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setCharacterEncoding("UTF-8");
			
			HttpSession session=req.getSession();
			
			
			int id=Integer.parseInt(req.getParameter("id"));
			String hoten=req.getParameter("tenkhachhang");
			String email=req.getParameter("email");
			String sdt=req.getParameter("sdt");
			String diachi=req.getParameter("diachi");
			String diadanh=req.getParameter("diadanh");
			String thanhpho=req.getParameter("thanhpho");
			String tensonha=req.getParameter("tensonha");
			Date ngaydathang = Date.valueOf(req.getParameter("ngayhientai"));

			
			String phuongthucthanhtoan=req.getParameter("pay");
			
			String fulladd=diachi+","+diadanh+","+ thanhpho+","+tensonha;
			
//			System.out.println(hoten+" "+email+" "+sdt+" "+fulladd+" "+phuongthucthanhtoan);
			
			GioHangDAOImpl dao=new GioHangDAOImpl(DBConnect.getConn());
			
			List<GioHang> glist=dao.getSPKhachHang(id);
			
			if(glist.isEmpty()) {
				session.setAttribute("faileMsg","Thêm sản phẩm vào giỏ hàng");
				
				resp.sendRedirect("cart.jsp");
				
			}
			else {
				
				SPOrderImpl dao2=new SPOrderImpl(DBConnect.getConn());
				
				San_Pham_Order o=null;
				
				ArrayList<San_Pham_Order> orderList=new ArrayList<San_Pham_Order>();
				Random r=new Random();
				
				for(GioHang g:glist) {
					
//					System.out.println(g.getTenNuocHoa()+" "+g.getTenThuongHieu()+" "+g.getGia());
			     o=new San_Pham_Order();
				  o.setOrderId("SP_ORD_00"+r.nextInt(1000));
			      o.setTenKhachHang(hoten);
			      o.setEmail(email);
			      o.setSdt(sdt);
			      o.setFulladd(fulladd);
			      o.setTenSP(g.getTenNuocHoa());
			      o.setThuongHieu(g.getTenThuongHieu());
	              o.setGia(g.getGia()+"");
	              o.setHinhThucThanhToan(phuongthucthanhtoan);
	              o.setNgayDatHang(ngaydathang);
			      orderList.add(o);
			     
					
				}
				
				if("noselect".equals(phuongthucthanhtoan)) {
					session.setAttribute("faileMsg","Hãy chọn phương thức thanh toán");
					
					resp.sendRedirect("cart.jsp");
				}else {
					
					boolean f=dao2.saveOrder(orderList);
					if(f) {
						
						resp.sendRedirect("order_success.jsp");
					}else {
						session.setAttribute("faileMsg","Đặt hàng không thành công");
						resp.sendRedirect("cart.jsp");}
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
