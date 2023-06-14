<%@page import="com.entity.KhachHang"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.SanPham"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@page import="com.DB.DBConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuoc hoa: index</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.crd-ho:hover {
	backgroud: %f7f7f7
}

.image-row {
    display: flex;
  }

  .image-row img {
    width: 300px; /* Kích thước chiều rộng mới */
    height: auto; /* Để tỷ lệ chiều cao tự động */
  }
  

  
</style>

</head>
<body style="background-color: #f2e7de;">

	<%
KhachHang kh=(KhachHang)session.getAttribute("khachhangobj");
%>

	<%@include file="all/navbar.jsp"%>
	<%-- <% Connection conn=DBConnect.getConn();
 out.print(conn);
 %>  --%>


	<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="3000">
				<img src="slider/3.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="slider/2.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" data-bs-interval="3000">
				<img src="slider/1.png" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleInterval" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>



	

	<div class="container">
		<div class="text-center mt-5"></div>
		
		<div class="text-center">
      <h4>THƯƠNG HIỆU NỔI BẬT</h4>
           </div>
	<div class="image-row">
  <a href="all_burberry.jsp" target="_blank">
    <img src="thuonghieu/burberry (2).png" alt="Image 1">
  </a>
  <a href="all_gucci.jsp" target="_blank">
    <img src="thuonghieu/cucci (2).png" alt="Image 2">
  </a>
  <a href="all_dior.jsp" target="_blank">
    <img src="thuonghieu/dior (2).png" alt="Image 3">
  </a>
  <a href="all_chanel.jsp" target="_blank">
    <img src="thuonghieu/chanel.png" alt="Image 4">
  </a>
</div>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-3">
      <%@include file="locSP.jsp"%>
    </div>
    <div class="col-md-9">
    
    
    	<!-- Start yêu thích nhất -->


	<div class="container">
		<div class="text-center mt-5"></div>
		<h4 class="text-center">Sản phẩm yêu thích nhất</h4>
		<div class="text-center mt-5"></div>
		<div class="row">

			<%
  SPDAOImpl dao3=new SPDAOImpl(DBConnect.getConn());
  List<SanPham> list3=dao3.getYeuThichNhat();
  for(SanPham s:list3){
	%>
			<div class="col-md-4 my-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="sp/<%=s.getPhoto() %>"
							style="width: 180px; height: 180px" class="img-thumblin ">
						<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						
							<p><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>
							

						<!-- xét phần đăng nhập để kh thêm vào giỏ hàng -->

						<%if(kh == null)
        { 
        %>

						<a href="dangnhap.jsp" class="btn btn-pink btn-sm col-md-4">Thêm
	</a>
						<%  }
        else
        {%>


						<a
							href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>"
							class="btn btn-pink btn-sm col-md-4">Thêm </a>

						<%}%>


						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary btn-sm col-md-4">Xem </a> <%-- <a href=""
							class="btn btn-danger btn-sm  col-md-6"><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></a> --%>

					</div>
				</div>
			</div>

			<%   
  }
  %>
   </div>
	</div>

	<div class="text-center my-5">

		<a href="All_yeu_thich_nhat.jsp" class="btn btn-danger btn-sm text-while">Xem thêm</a>

	</div>

<!-- end yêu thích nhất
 -->

	<!-- Start New -->

	<div class="container">
		<div class="text-center mt-5"></div>
		<h4 class="text-center">Sản phẩm mới</h4>
		<div class="text-center mt-5"></div>
		<div class="row">

			<%
  SPDAOImpl dao1=new SPDAOImpl(DBConnect.getConn());
  List<SanPham> list1=dao1.getNewSP();
  for(SanPham s:list1){
	%>
			<div class="col-md-4 my-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="sp/<%=s.getPhoto() %>"
							style="width: 180px; height: 180px" class="img-thumblin ">
						<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						
							<p><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>
							

						<!-- xét phần đăng nhập để kh thêm vào giỏ hàng -->

						<%if(kh == null)
        { 
        %>

						<a href="dangnhap.jsp" class="btn  btn-pink btn-sm col-md-4">Thêm
					</a>
						<%  }
        else
        {%>


						<a
							href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>"
							class=" btn  btn-pink btn-sm col-md-4">Thêm </a>

						<%}%>


						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary btn-sm col-md-4">Xem </a> <%-- <a href=""
							class="btn btn-danger btn-sm  col-md-6"><%=s.getGiaBan() %> <img src="icon/tien.png"
					alt="tien" width="20" height="30"></a> --%>

					</div>
				</div>
			</div>

			<%   
  }
  %>
		</div>
	</div>

	<div class="text-center mt-5">

		<a href="hang_moi_ve.jsp" class="btn btn-danger btn-sm text-while">Xem thêm</a>

	</div>

	<!-- End New -->


<!-- Nước hoa nam-->

<div class="container">
		<div class="text-center mt-5"></div>
		<h4 class="text-center">Nước hoa nam</h4>
		<div class="text-center mt-5"></div>
		<div class="row">

			<%
  SPDAOImpl dao4=new SPDAOImpl(DBConnect.getConn());
  List<SanPham> list4=dao4.getNuocHoaNam();
  for(SanPham s:list4){
	%>
			<div class="col-md-4 my-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="sp/<%=s.getPhoto() %>"
							style="width: 180px; height: 180px" class="img-thumblin ">
						<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						
							<p><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>
							

						<!-- xét phần đăng nhập để kh thêm vào giỏ hàng -->

						<%if(kh == null)
        { 
        %>

						<a href="dangnhap.jsp" class="btn btn-pink btn-sm col-md-4">Thêm
							</a>
						<%  }
        else
        {%>


						<a
							href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>"
							class="btn btn-pink btn-sm col-md-4">Thêm </a>

						<%}%>


						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary btn-sm col-md-4">Xem </a><%--  <a href=""
							class="btn btn-danger btn-sm  col-md-6"><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></a> --%>

					</div>
				</div>
			</div>

			<%   
  }
  %>
		</div>
	</div>

	<div class="text-center my-5">

		<a href="All_nuoc_hoa_nam.jsp" class="btn btn-danger btn-sm text-while">Xem thêm</a>

	</div>


<!-- End Nước Hoa Nam -->

<!-- Nước hoa nữ -->

<div class="container">
		<div class="text-center mt-5"></div>
		<h4 class="text-center">Nước hoa nữ</h4>
		<div class="text-center mt-5"></div>
		<div class="row">

			<%
  SPDAOImpl dao5=new SPDAOImpl(DBConnect.getConn());
  List<SanPham> list5=dao5.getNuocHoaNu();
  for(SanPham s:list5){
	%>
			<div class="col-md-4 my-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="sp/<%=s.getPhoto() %>"
							style="width: 180px; height:180px" class="img-thumblin ">
						<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						
							<p><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>
							

						<!-- xét phần đăng nhập để kh thêm vào giỏ hàng -->

						<%if(kh == null)
        { 
        %>

						<a href="dangnhap.jsp" class="btn btn-pink btn-sm col-md-4">Thêm
							</a>
							
						<%  }
        else
        {%>


						<a
							href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>"
							class="btn btn-pink btn-sm col-md-4">Thêm </a>

						<%}%>


						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary btn-sm col-md-4">Xem </a> <%-- <a href=""
							class="btn btn-danger btn-sm  col-md-4"><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></a> --%>

					</div>
				</div>
			</div>

			<%   
  }
  %>
		</div>
	</div>

	<div class="text-center my-5">

		<a href="All_nuoc_hoa_nu.jsp" class="btn btn-danger btn-sm text-while">Xem thêm</a>

	</div>


<!-- End Nước Hoa Nu -->
    
		<div class="text-center mt-5"></div>
		<h4 class="text-center">Sản phẩm được pass lại</h4>
		<div class="text-center mt-5"></div>
		<div class="row">

			<%
  SPDAOImpl dao2=new SPDAOImpl(DBConnect.getConn());
  List<SanPham> list2=dao2.getAllPass();
  for(SanPham s:list2){
	%>
			<div class="col-md-4 my-4">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="sp/<%=s.getPhoto() %>"
						
							style="width: 180px; height: 180px" class="img-thumblin ">
						<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						<p>
							<%if(s.getLoaiNuocHoa().equals("pass")){ %>
							
						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary btn-sm col-md-4">Xem </a> 
						<%
          } else{
        %>
						Loại:
						<%=s.getLoaiNuocHoa() %>


						<%if(kh == null)
        { 
        %>

						<a href="dangnhap.jsp" class="btn  btn-pink btn-sm col-md-4">Thêm
						</a>
						<%  }
        else
        {%>


						<a
							href="giohang?idsp=<%=s.getIdNuoc_Hoa( )%>&&idkh=<%=kh.getIdKhachHang() %>"
							class="btn btn-pink btn-sm col-md-4">Thêm</a>

						<%}%>



						<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>"
							class="btn btn-secondary col-md-4 ">Xem </a> 

						<%
        } %>
					</div>
				</div>
			</div>

			<%   
  }
  %>
		</div>
	

	<div class="text-center my-5">

		<a href="all_sp_pass.jsp" class="btn btn-danger btn-sm text-while">Xem thêm</a>

	</div>
	
	
	<!-- Start -->


</div>
</div>
</div>

<%@include file="all/footer.jsp" %>
</body>
</html>