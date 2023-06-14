<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@page isELIgnored="false" %>
<style>
.nav-link {
    display: block;
    padding: var(--bs-nav-link-padding-y) var(--bs-nav-link-padding-x);
    font-size: var(--bs-nav-link-font-size);
    font-weight: var(--bs-nav-link-font-weight);
    color: #212529;
    text-decoration: none;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
}

.navbar-nav .nav-link.active, .navbar-nav .show>.nav-link {
    color: #212529;
}



</style>


<div class="container-fluid p-3">

	<div class="row d-flex align-items-center">
		<div class="col-md-3">
			<h3 style="display: inline-block; vertical-align: middle;">
				<img src="icon/logo.gif" alt="Elegant" style="width: 50px;" >
				<span style="display: inline-block; vertical-align: middle;">Elegant</span>
			</h3>

		</div>
		<div class="col-md-2"></div>
		<div class="col-md-3">
			<form class="d-flex" role="search" action="searchSP.jsp" method="post">
				<input class="form-control me-2" type="search" name="ch"
					placeholder="Nội dung tìm kiếm" aria-label="Search">
				<button class="btn btn-outline-secondary" type="submit">Tìm</button>
			</form>

		</div>

		<c:if test="${not empty khachhangobj }">

			<div class="col-md-4 text-end">
				<a href="cart.jsp"> <img src="icon/giohang.png" alt="Cart"
					style="width: 70px; height: 70px;">
				</a> <a href=""
					class="btn btn-outline-secondary"
					style="max-width: 100px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;"
					title="${khachhangobj.tenDangNhap}"
					onmouseover="this.style.textDecoration='underline'"
					onmouseout="this.style.textDecoration='none'" data-toggle="tooltip"
					data-placement="bottom" data-trigger="hover" data-delay="{ "show": 500, "hide": 100 }">
					<img src="icon/dangnhap.png"
					alt="đăng nhập" width="30" height="30">${khachhangobj.tenDangNhap}
				</a> <a href="dangxuat" class="btn btn-outline-secondary"><img src="icon/dangxuat.png"
					alt="đăng nhập" width="30" height="30">
					Đăng xuất
				</a>

			</div>

		</c:if>

		<c:if test="${empty  khachhangobj  }">
			<div class="col-md-4 text-end">
				<a href="dangnhap.jsp" class="btn btn-outline-secondary"
					style="background-color: #fff; color: #000;"><img src="icon/dangnhap.png"
					alt="đăng nhập" width="30" height="30">Đăng Nhập
				</a> <a href="dangky.jsp" class="btn btn-outline-secondary"
					style="background-color: #fff; color: #000;"> <img src="icon/dangky.png"
					alt="đăng ký" width="30" height="30"> Đăng Ký
				</a>

			</div>
		</c:if>

	</div>

</div>

<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-secondary"> -->

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FFB6C1;">
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-bs-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto mb-10 mb-lg-0">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="index.jsp"> <img src="icon/home.png"
					alt="Trang chủ" width="30" height="30"> TRANG CHỦ
			</a></li>


			<li class="nav-item"><a class="nav-link " aria-current="page"
				href="khuyen_mai.jsp"><img src="icon/sale.png"
					alt="Khuyến mãi" width="30" height="30"> KHUYẾN
					MÃI</a></li>
			<li class="nav-item "><a class="nav-link" aria-current="page"
				href="hang_moi_ve.jsp"><img src="icon/new (1).png"
					alt="moi" width="30" height="30">HÀNG MỚI
					VỀ</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" role="button"
				data-bs-toggle="dropdown" aria-expanded="false"><img src="icon/sp.png"
					alt="moi" width="35" height="35"> SẢN PHẨM
			</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="All_yeu_thich_nhat.jsp">Nước Hoa Yêu Thích
							Nhất</a></li>				
					<li><a class="dropdown-item" href="All_nuoc_hoa_nam.jsp">Nước Hoa Nam</a></li>
					<li><a class="dropdown-item" href="All_nuoc_hoa_nu.jsp">Nước Hoa Nữ</a></li>
					
					
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="all_sp_pass.jsp">Sản phẩm được pass lại</a></li>
				</ul></li>
			<li class="nav-item "><a class="nav-link" aria-current="page"
				href="gioi_thieu.jsp"><img src="icon/gioithieu.png"
					alt="gioi thieu" width="30" height="30">GIỚI THIỆU
					
				</a></li>
				
		</ul>

		<form class="form-inline my-2 my-lg-0">
			<a href="khsetting.jsp" class="btn btn-light my-2 my-sm-0" type="submit">
				<img src="icon/chinhsua.png"
					alt="moi" width="30" height="30"> Chỉnh sửa
			</a >
			<a href="tro_giup.jsp" class="btn btn-light my-2 my-sm-0" type="submit">
				<img src="icon/contac.png"
					alt="moi" width="30" height="30"> Contact us
			</a>
		</form>
	</div>
	



</nav>
