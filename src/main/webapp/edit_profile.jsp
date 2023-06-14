<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa thông tin</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.red {
	color: red;
}
</style>
</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center p-1" style="color: black;">CHỈNH SỬA THÔNG TIN</h5>
			
			
			<c:if test="${not empty faileMsg}">
			<h5 class="text-center text-danger">${faileMsg}</h5>
			<c:remove var="faileMsg" scope="session"/>
			</c:if>
			
			<c:if test="${not empty succMsg}">
			<h5 class="text-center text-danger">${succMsg}</h5>
			<c:remove var="succMsg" scope="session"/>
			</c:if>
			
			
			<form class="form" action="update_profile" method="post">

             <input type="hidden" value="${khachhangobj.idKhachHang}" name="idKhachHang">
             
			  <div class="form-group">
			   <label for="hoVaTen" class="form-label">Họ và tên<span class="red">*</span></label>
			   <input type="text" class="form-control" id="hoVaTen" name="hoVaTen" required="required"
			   value="${khachhangobj.hoVaTen}">
			  </div>

	
					<div class="form-group">
						<label for="diaChiKhachHang" class="form-label">Địa chỉ
							khách hàng</label> <input type="text" class="form-control"
							id="diaChiKhachHang" name="diaChiKhachHang" value="${khachhangobj.diaChi}" >
					</div>
					
					<div class="form-group">
						<label for="dienThoai" class="form-label">Điện thoại</label> <input
							type="tel" class="form-control" id="dienThoai" name="dienThoai" value="${khachhangobj.SDT}" >
					</div>
					<div class="form-group">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" id="email" name="email" value="${khachhangobj.diaChiEmail}" >
					</div>

					<div class="form-group">
			  <label for="matKhau" class="form-label">Mật khẩu của bạn<span
							class="red">*</span></label> 
							<input type="password" class="form-control"
							id="matKhau" name="matKhau" required="required" >
			  </div>
			  
 <div class="text-center my-2">
             
  <button type="submit" class="btn btn-secondary">Thay đổi</button>
</div>

				</form>
				</div>  
        </div>
				 
 
 
 
					
					</div>
				</div>
			</div>
		
<%@include file="all/footer.jsp" %>
</body>
</html>