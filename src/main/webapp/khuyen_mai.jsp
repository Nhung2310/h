<%@page import="com.entity.KhachHang"%>
<%@page import="com.entity.SanPham"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hang_khuyen_mai</title>
<%@include file="all/allcss.jsp"%>
</head>
<body style="background-color: #f2e7de;">
<%
	KhachHang kh = (KhachHang) session.getAttribute("khachhangobj");
	%>

	<%@include file="all/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row">

			<div class="container">
				<div class="text-center mt-5"></div>
				
				 <c:if test="${not empty addCart}">
    <div class="alert alert-success" role="alert">
    ${addCart}
     </div> 
     <c:remove var="addCart" scope="session"/>
	</c:if>
				
				<h4 class="text-center">Khuyến Mãi</h4>
				<div class="text-center mt-5"></div>
				<div class="row">

					<%
  SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
  List<SanPham>list=dao.getAllKhuyenMai();
  for(SanPham s:list){
	%>
					<div class="col-md-4 my-4">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="sp/<%=s.getPhoto()%>"
									style="width: 280px; height: 280px" class="img-thumblin ">
								<p><%=s.getTenNuocHoa() %></p>
						<p><%=s.getTenthuongHieu() %></p>
						
							<p><%=s.getGiaBan() %><img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>

								<%
								if (kh == null) {
								%>

								<a href="dangnhap.jsp" class="btn btn-pink btn-sm col-md-4">Thêm
									vào giỏ</a>
								<%
								} else {
								%>


								<a
									href="giohang?idsp=<%=s.getIdNuoc_Hoa()%>&&idkh=<%=kh.getIdKhachHang()%>"
									class="btn btn-pink btn-sm col-md-4">Thêm vào giỏ</a>

								<%
								}
								%>


								<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa()%>"
									class="btn btn-secondary btn-sm col-md-2">Xem </a> 

							</div>
						</div>
					</div>

					<%
					}
					%>
				</div>
			</div>


		</div>
	</div>

<%@include file="all/footer.jsp" %>
</body>
</html>