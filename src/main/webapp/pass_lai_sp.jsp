<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bán lại nước hoa</title>
<%@include file="all/allcss.jsp"%>
</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

	<div class="container my-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h5 class="text-center p-1" style="color: black;">Bán lại sản phẩm</h5>
<p class="text-center p-1" style="color: black;">"Bán hoặc tặng lại các sản phẩm mà bạn không sử dụng hoặc 
không phù hợp với nhu cầu của bạn."</p>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg}</p>

							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty faileMsg }">
							<p class="text-center text-danger">${faileMsg}</p>
							<c:remove var="faileMsg" scope="session" />
						</c:if>

						<form action="them_sp_ban_lai" method="post"
                enctype="multipart/form-data">
               
               <input type="text" value="${khachhangobj.diaChiEmail}" name="khachhang">
               
              <div class="form-group">
                <label for="exampleInputEmail">Tên Nước Hoa* </label>
              <input name="tensp" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail">Tên Thương Hiệu* </label>
              <input name="tenthuonghieu" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail"> Số lượng* </label>
              <input name="giaban" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail"> Xuất xứ* </label>
              <input name="xuatxu" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail"> Năm sản xuất* </label>
              <input name="namsanxuat" type="date" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
               <div class="form-group">
                <label for="exampleFormConTrolFile1"> Upload Photo* </label>
              <input name="photo" type="file" class="form-control-file"
             id= "exampleFormConTrolFile1" >
              </div>
            
              
              <div class="col-sm-3"></div>
              
             <div class="text-center">
             
  <button type="submit" class="btn btn-secondary">Đăng</button>
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