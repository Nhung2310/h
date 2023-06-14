<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dang ky</title>
<%@include file="all/allcss.jsp" %>
<style type="text/css">
.red {
  color: red; 
}

.container {
  margin-top: 60px;
}
</style>

<script>

function validateName() {
	  var name = document.getElementById("hoVaTen").value;
	  var namePattern = /^[^\d\s]+(\s+[^\d\s]+)+$/;
	  
	  if (name.trim() === "") {
	    alert("Họ và tên không được để trống");
	    return false;
	  }
	  
	  if (namePattern.test(name)) {
	    return true;
	  } else {
	    alert("Họ và tên không đúng định dạng. Vui lòng kiểm tra lại");
	    return false;
	  }
	}


//Hàm kiểm tra số điện thoại hợp lệ
function validatePhone() {
  var phone = document.getElementById("dienThoai").value;
  var phonePattern = /^(0\d{9})$/;
  if (phonePattern.test(phone)) {
    return true;
  } else {
    alert("Số điện thoại không đúng định dạng. Vui lòng nhập số điện thoại có 10 chữ số bắt đầu bằng số 0");
    return false;
  }
}

// Hàm kiểm tra email hợp lệ
function validateEmail() {
  var email = document.getElementById("email").value;
  var emailPattern = /^[\w-\.]+@gmail.com$/;
  if (emailPattern.test(email)) {
    return true;
  } else {
    alert("Email không đúng định dạng. Vui lòng nhập địa chỉ email có đuôi @gmail.com");
    return false;
  }
}
</script>

</head>
<body  style="background-color:#f2e7de;">
<%@include file="all/navbar.jsp" %>

<div class="container">

<div class="card">
    <div class="card-body">
        <div class="row">
         <div class="text-center"><h3>ĐĂNG KÝ TÀI KHOẢN</h3></div>
            <c:if test="${not empty succMgs }">
            <p class="text-center text-success">${succMgs }</p>
            <c:remove var="succMgs" scope="session"/>
            </c:if>
            
             <c:if test="${not empty faileMsg }">
            <p class="text-center text-success">${faileMsg }</p>
            <c:remove var="faileMsg" scope="session"/>
            </c:if>
            
            <div class="col-md-6">
            <div class="text-center">
                <img src="slider/dangky.png" class="img-fluid" alt="Image" height="180%" width="200%">
                </div>
            </div>
            <div class="col-md-6">
                <form class="form" action="dangky" method="post">
                    <div class="row">
              <div class="col-sm-6">
			 <h4>Tài khoản</h4>
			  <div class="mb-2">
			   <label for="tenDangNhap" class="form-label">Tên đăng nhập<span class="red">*</span></label>
			   <input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap" required="required">
			  </div>
			 
			 <div class="mb-2">
			  <label for="matKhau" class="form-label">Mật khẩu<span
							class="red">*</span></label>
  <input type="password" class="form-control" id="matKhau" placeholder="Mật khẩu" name="matKhau">
  <button class="btn btn-outline-secondary" type="button" id="togglePassword">
    <i class="bi bi-eye"></i>
  </button>
</div>
			 <!--  <label for="matKhau" class="form-label">Mật khẩu<span
							class="red">*</span></label> <input type="password" class="form-control"
							id="matKhau" name="matKhau" required="required" onkeyup="kiemTraMatKhau()">
			  </div> -->
			  
			 
			 <h4>Thông tin khách hàng</h4>
			  <div class="mb-2">
			   <label for="hoVaTen" class="form-label">Họ và tên<span class="red">*</span></label>
			   <input type="text" class="form-control" id="hoVaTen" name="hoVaTen" required="required">
			  </div>
			 
			 <div class="mb-2">
						<label for="gioiTinh" class="form-label">Giới tính</label> <select
							class="form-control" id="gioiTinh" name="gioiTinh">
							
							<option value="nam">NAM</option>
						   <option value="nu">Nữ</option>
						</select>
					</div>
			 <div class="mb-2">
						<label for="ngaySinh" class="form-label">Ngày sinh</label> <input
							type="date" class="form-control" id="ngaySinh" name="ngaySinh">
					</div>
				</div>
                        
                      
                           
				<div class="col-sm-6">
					<h4>Địa chỉ</h4>
					<div class="mb-2">
						<label for="diaChiKhachHang" class="form-label">Địa chỉ
							khách hàng</label> <input type="text" class="form-control"
							id="diaChiKhachHang" name="diaChiKhachHang" >
					</div>
					
					<div class="mb-2">
						<label for="dienThoai" class="form-label">Điện thoại</label> <input
							type="tel" class="form-control" id="dienThoai" name="dienThoai" >
					</div>
					<div class="mb-2">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" id="email" name="email"  >
					</div>
					<div class="mb-2">
						<label for="dongYDieuKhoan" class="form-label">Đồng ý với 
							<a>điều khoản của công ty    </a><span class="red">*</span>
						</label> <input type="checkbox" class="form-check-input"
							id="dongYDieuKhoan" name="dongYDieuKhoan" required="required" onchange="xuLyChonDongY()" >
					</div>
					<div class="mb-2">
						<label for="dongYNhanMail" class="form-label">Đồng ý nhận
							email  </label> <input type="checkbox" class="form-check-input"
							id="dongYNhanMail" name="dongYNhanMail">
					</div>
					<div class="text-center">
                    <input class="btn btn-primary form-control" type="submit"
						value="Đăng ký" name="submit" id="submit" onclick="return (validateName() && validatePhone() && validateEmail());">
						</div>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
    </div>
</div>


</div>
 <div class="container"></div>

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