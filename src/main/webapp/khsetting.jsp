<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Khách hàng chỉnh sửa</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">

a{
text_decoration:none;
color:black;
}

a:hover{
 text-decoration: none;
}
</style>
</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

<c:if test="${empty khachhangobj }">
<c:redirect url="dangnhap.jsp"/>
</c:if>


	<div class="container">
	

	<h3 class="text-center">Hello, ${khachhangobj.tenDangNhap}</h3>
	
		
		<div class="row p-5">
			<div class="col-md-4">
				<a href="pass_lai_sp.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="bi bi-bag-heart-fill" style="font-size: 2.5em;"></i>
							</div>
							<h4>Pass lại sản phẩm</h4>
						</div>
					</div>
				</a>
			</div>
		
			<div class="col-md-4">
				<a href="san_pham_pass.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="bi bi-bag-heart-fill" style="font-size: 2.5em;"></i>
							</div>
							<h4>Sản phẩm pass</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-4">
				<a href="edit_profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="bi bi-pencil-square" style="font-size: 2.5em;"></i>
							</div>
							<h4>Chỉnh sửa thông tin</h4>
						</div>
					</div>
				</a>
			</div>

			
			<div class="col-md-6 mt-3">
				<a href="thong_tin_dat_hang.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="bi bi-box2-heart-fill" style="font-size: 2.5em;"></i>
							</div>
							<h4>Đơn hàng của tôi</h4>
							<p>theo dõi đơn hàng của bạn</p>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-6 mt-3">
				<a href="tro_giup.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="bi bi-person-circle" style="font-size: 2.5em;"></i>
							</div>
							<h4>Trung tâm trợ giúp</h4>
							<p>dịch vụ 24/7</p>
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>
	<%@include file="all/footer.jsp" %>

</body>
</html>