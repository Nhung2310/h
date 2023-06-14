<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page isELIgnored="false"%>


	<div class ="container-fluid p-3"> 
	<div class="row d-flex align-items-center">
		<div class="col-md-3">
			<h3 style="display: inline-block; vertical-align: middle;">
				<img src="../icon/logo.gif" alt="Elegant" style="width: 50px;" >
				<span style="display: inline-block; vertical-align: middle;">Elegant
				</span>
			</h3>


		</div>
		<div class="col-md-3"></div>
		<div class="col-md-3"></div>

		<div class="col-md-3">
			<c:if test="${not empty khachhangobj }">
				<a class="btn btn-outline-secondary">
				 <img src="../icon/dangnhap.png"
					alt="đăng nhập" width="30" height="30">${khachhangobj.tenDangNhap }</a>
				<a data-bs-toggle="modal" data-bs-target="#exampleModal"
					class="btn btn-outline-secondary"> <img src="../icon/dangxuat.png"
					alt="đăng nhập" width="30" height="30">
					Đăng xuất
				</a>
			</c:if>

			<c:if test="${empty khachhangobj }">
				<a href="../dangnhap.jsp" class="btn btn-outline-secondary"> <img src="../icon/dangxuat.png"
					alt="đăng nhập" width="30" height="30">Đăng Nhập
				</a>

				<a href="../dangky.jsp" class="btn btn-outline-secondary"><img src="icon/dangky.png"
					alt="đăng ký" width="30" height="30"> Đăng Ký
				</a>

			</c:if>



		</div> 

	</div>

</div>

<!--  đăng xuất logout modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel"></h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h4>Bạn chắc chắn muốn đăng xuất</h4>
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Đóng</button>
					<a href="../dangxuat" type="button"
						class="btn btn-primary text-while">Đăng xuất></a>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
</div>
<!--  End  đăng xuất-->



<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #FFB6C1;">
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		data-bs-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav me-auto mb-3 mb-lg-0">
			<li class="nav-item"><a class="nav-link active"
				aria-current="page" href="home.jsp"><img src="../icon/home.png"
					alt="Trang chủ" width="30" height="30"> TRANG CHỦ</a></li>
     </ul>
	</div>

</nav>
