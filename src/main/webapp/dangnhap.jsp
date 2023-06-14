<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@page isELIgnored="false" %>  
 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.red {
	color: red;
}
</style>
<!-- <style>
body{
background-image: url("slider/nen.jpg")
}
</style> -->
</head>
<body style="background-color: #f2e7de;">
	<%@include file="all/navbar.jsp"%>
	<div class="container-fluid p-5">
		<div class="container">
		<div class="card">
  <div class="row no-gutters">
   <div class="col-md-6">
      <img src="slider/sign up-08.png" class="card-img" alt="...">
    </div>
    <div class="col-md-4">
      <div class="card-body">
        <h1 class="h3 mb-3 fw-normal">ĐĂNG NHẬP</h1>
        <c:if test="${not empty failedMsg }">
          <h5 class="text-center text-danger">${failedMsg}</h5>
          <c:remove var="failedMsg" scope="session" />
        </c:if>
        <form action="dangnhap" method="post">
          <div class="form-floating">
            <input type="text" class="form-control" id="tenDangNhap" placeholder="Tên đăng nhập" name="tenDangNhap">
            <label for="tenDangNhap">Tên đăng nhập</label>
          </div>
           <!-- <div class="form-floating">
            <input type="password" class="form-control" id="matKhau" placeholder="Mật khẩu" name="matKhau">
            <label for="matKhau">Mật khẩu</label>
          </div>  -->
          
          <div class="input-group mb-3">
  <input type="password" class="form-control" id="matKhau" placeholder="Mật khẩu" name="matKhau">
  <button class="btn btn-outline-secondary" type="button" id="togglePassword">
    <i class="bi bi-eye"></i>
  </button>
</div>
          
           <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> Ghi nhớ tài khoản này
            </label>
          </div>
          <button class="w-100 btn btn-lg btn-primary" type="submit">Đăng nhập</button>
          <a href="dangky.jsp">Đăng ký tài khoản mới</a>
          <a href="forgotPassword.jsp">Quên mật khẩu</a>
          <p class="mt-5 mb-3 text-muted">&copy; 2017–2025</p>
        </form>
      </div>
    </div>
   
  </div>
</div>

</div>
</div>
<%@include file="all/footer.jsp" %>
 <script>
    document.getElementById("togglePassword").addEventListener("click", function () {
      const passwordInput = document.getElementById("matKhau");
      const togglePasswordIcon = document.querySelector("#togglePassword i");
      
      if (passwordInput.type === "password") {
        passwordInput.type = "text";
        togglePasswordIcon.classList.remove("bi-eye");
        togglePasswordIcon.classList.add("bi-eye-slash");
      } else {
        passwordInput.type = "password";
        togglePasswordIcon.classList.remove("bi-eye-slash");
        togglePasswordIcon.classList.add("bi-eye");
      }
    });
  </script>
</body>
</html>