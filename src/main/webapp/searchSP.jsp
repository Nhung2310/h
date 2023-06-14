<%@page import="com.entity.KhachHang"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.SanPham"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm sản phẩm</title>
<%@include file="all/allcss.jsp"%>
</head>
<body style="background-color: #f2e7de;">
<%
	KhachHang kh = (KhachHang) session.getAttribute("khachhangobj");
	%>
<%@include file="all/navbar.jsp"%>
   

			<div class="container">
				<div class="text-center mt-5"></div>
				
				 <c:if test="${not empty addCart}">
    <div class="alert alert-success" role="alert">
    ${addCart}
     </div> 
     <c:remove var="addCart" scope="session"/>
	</c:if>
				
				
				<div class="text-center mt-5"></div>
				<div class="row">

			
	<%
	String ch=request.getParameter("ch");
	SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
	List<SanPham> list=dao.getSPBYSearch(ch);
	for(SanPham s:list) {
	
	%>

					
					
					<div class="col-md-4 my-4">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img alt="" src="sp/<%=s.getPhoto()%>"
									style="width: 280px; height: 280px" class="img-thumblin ">
								<p><%=s.getTenNuocHoa()%></p>
								<p><%=s.getTenthuongHieu()%></p>
								<p><%=s.getGiaBan() %> đ <img src="icon/tien.png"
					alt="tien" width="20" height="30"></p>

								<%
								if (kh == null) {
								%>

								<a href="dangnhap.jsp" class="btn btn-danger btn-sm col-md-4">Thêm
									vào giỏ</a>
								<%
								} else {
								%>


								<a
									href="giohang?idsp=<%=s.getIdNuoc_Hoa()%>&&idkh=<%=kh.getIdKhachHang()%>"
									class="btn btn-danger btn-sm col-md-4">Thêm vào giỏ</a>
									

								<%
								}
								%>


								<a href="view_sp.jsp?id=<%=s.getIdNuoc_Hoa()%>"
									class="btn btn-success btn-sm col-md-2">Xem </a> 

							</div>
						</div>
					</div>

					<%
					}
					%>
				</div>
			</div>

<div class="my-10"></div>
	<%-- 	<%@include file="all/footer.jsp" %>
 --%></body>
</html>