<%@page import="com.entity.KhachHang"%>
<%@page import="com.entity.SanPham"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@page isELIgnored="false" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hang_moi_ve</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
/* toast*/
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {
	from {
		bottom: 0;
		opacity: 0;
	}

	to {
		bottom: 30px;
		opacity: 1;
	}
}

@keyframes fadeOut {
	from {
		bottom: 30px;
		opacity: 1;
	}

	to {
		bottom: 0;
		opacity: 0;
	}
}


/* toast*/
</style>
</head>
<body style="background-color: #f2e7de;">
	<%
	KhachHang kh = (KhachHang) session.getAttribute("khachhangobj");
	%>

	<%-- <c:if test="${not empty addCart}">
		<div id="toast">${addCart}</div>
	<script type="text/javascript">
  showToast();
  function  showToast(content) {
	  $('#toast').addClass("display");
	  $('#toast').html(content);
	  setTimeout(()=>{
		  $('#toast').removeClass("display")
	  },2000);
  }
</script>

		<c:remove var="addCart" scope="session"/>
	</c:if> --%>
	
	
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
	
				<h4 class="text-center">Hàng mới về</h4>
				<div class="text-center mt-5"></div>
				<div class="row my-5">

					<%
					SPDAOImpl dao2 = new SPDAOImpl(DBConnect.getConn());
					List<SanPham> list2 = dao2.getAllNew();
					for (SanPham s : list2) {
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
                   <br>
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