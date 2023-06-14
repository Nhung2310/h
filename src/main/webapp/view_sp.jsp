<%@page import="com.entity.KhachHang"%>
<%@page import="com.entity.SanPham"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View_Sp</title>
<%@include file="all/allcss.jsp"%>
</head>
<body style="background-color: #f2e7de;">
	<%@include file="all/navbar.jsp"%>
	
	<%
KhachHang kh=(KhachHang)session.getAttribute("khachhangobj");
%>
	

	<%
       int id=Integer.parseInt(request.getParameter("id"));
       SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
       SanPham s=dao.getSPByID(id);
      
       %>

	<div class="container p-3">
		<div class="row ">

			<div class="col-md-6 text_center p-5 border bg-white">
				<div class="text-center">
					<img src="sp/<%=s.getPhoto() %>"
						style="height: 200px; width: 200px"><br>
					<h5 class="mt-3">
						Tên Sản Phẩm:
						<%=s.getTenNuocHoa() %><span class="text-cuccess"></span>

					</h5>
					<h5>
						Tên Thương Hiệu:
						<%=s.getTenthuongHieu() %><span class="text-cuccess"></span>
					</h5>

					
					
					<h5>
						DungTich:
						<%=s.getDungTich()%> ml <span class="text-cuccess"></span>
					</h5>
				</div>
				
			</div>

			<div class="col-md-6 text_center p-5 border bg-white">
				<div class="text-center">
					<h3><%=s.getTenNuocHoa() %>
					</h3>
				</div>
				<%
      if("pass".equals(s.getLoaiNuocHoa()))
      {%>
                 
				<h5>Liên hệ với người bán</h5>
				<h5>
					<i class="bi bi-envelope-fill"></i>Email:
					<%=s.getEmail() %>
				</h5>
				<%
      }
      %>


				<div class="row">
					<div class="col-md-4 text-danger text-center p-2">
						<h2>
							<i class="bi bi-cash-coin"></i>
						</h2>
						<a href="cart.jsp"style="color: red;">Thanh toán</a>

					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<h2>
							<i class="bi bi-arrow-counterclockwise fa-3x"></i>
						</h2>
						<a href="index.jsp"style="color: red;">Trở lại trang</a>
					</div>

					<div class="col-md-4 text-danger text-center p-2">
						<h2>
							<i class="bi bi-truck-flatbed fa-3x "></i>
						</h2>
						<p>Miễn phí vận chuyển</p>
					</div>
					<%
       if("pass".equals(s.getLoaiNuocHoa())){
      %>

					<div class=" text-center p-3">
						<a href="index.jsp" class="btn btn-secondary"><i
							class="bi bi-cart-plus"></i> Tiếp tục mua </a> <a href=""
							class="btn btn-danger"><%=s.getGiaBan() %> cái</a>
					</div>


					<% 
       }
       else{%>

					<div class=" text-center p-3">
						<a href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>" class="btn btn-primary"><i class="bi bi-cart-plus"></i>
							Thêm vào giỏ </a> <a href="" class="btn btn-danger"><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="30" height="30"></a>
					</div>

					<% }
       %>

						

				</div>
			</div>
		</div>
		
	<br>
        <div class="card">
            <div class="card-body">
                
                <div class="card" style="background-color: rgba(189, 190, 192, 0.162);">
                    <div class="card-body">
                        <span style="font-weight: bold; font-size: 1.2em;">CHI TIẾT SẢN PHẨM</span>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3" >
                        <div style="margin-left: 3em;">Danh Mục</div>
                        <div style="margin-left: 3em;">Thương Hiệu</div>
                        <div style="margin-left: 3em;">Kho Hàng</div>
                        <div style="margin-left: 3em;">Gửi Từ</div>
                        <div style="margin-left: 3em;">Mô tả </div>

                    </div>
                    <div class="col-md-9">
                        <div><a href="index.jsp">Trang Chủ</a> <span>></span></div>
                        <div><%=s.getTenthuongHieu() %></div>
                        <div><%=s.getSoLuong() %></d>
                        <div><%=s.getXuatXu() %></div>
                        <div><%=s.getMoTa()%></div>
                    </div>
                </div>

            </div>

        </div>
        </div>
	</div>
	
	
<%@include file="all/footer.jsp" %>
</body>
</html>