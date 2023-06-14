<%@page import="java.util.List"%>
<%@page import="com.entity.GioHang"%>
<%@page import="com.entity.KhachHang"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.GioHangDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gio_hang_khach_hang</title>
<%@include file="all/allcss.jsp"%>

</head>
<body style="background-color: #f2e7de;">
	<%@include file="all/navbar.jsp"%>

	<c:if test="${empty khachhangobj }">
		<c:redirect url="dangnhap.jsp"></c:redirect>
	</c:if>


	<c:if test="${not empty succMsg}">
    <div class="alert alert-success" role="alert">
    ${succMsg}
     </div> 
     <c:remove var="succMsg" scope="session"/>
	</c:if>


   <c:if test="${not empty faileMsg}">
    <div class="alert alert-danger text-center" role="alert">
   ${faileMsg}
     </div> 
     <c:remove var="faileMsg" scope="session"/>
	</c:if>



	<div class="container">
		<div class="row p-5">
			<div class="col-md-5">
			
			<div class="card bg-white">
			
			    <div class="card-body">
				<h3 class="text-center ">Giỏ hàng của bạn </h3>
				
				
				 <table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">Tên Nước Hoa</th>
							<th scope="col">Thương Hiệu</th>							
							<th scope="col">Giá tiền</th>
							<th scope="col">Chọn</th>
							
						</tr>
					</thead>
					<tbody>
					
					<%
					KhachHang kh=(KhachHang)session.getAttribute("khachhangobj");
					
					GioHangDAOImpl dao=new GioHangDAOImpl(DBConnect.getConn());
					
					List<GioHang> giohang=dao.getSPKhachHang(kh.getIdKhachHang());
					Double tongTien=0.00;
					
					for(GioHang g:giohang){
						tongTien=g.getTong_tien();
					%> 
						<tr>
							<th scope="row"><%=g.getTenNuocHoa() %></th>
							<td><%=g.getTenThuongHieu() %></td>
							<td><%=g.getGia() %></td>
							<td>
							<a href="xoa_spkh?idsp=<%=g.getIdsan_pham()%>&&idkh=<%=g.getIdkhachhang()%> &&idgh=<%=g.getIdgio_hang()%>" class="btn btn-sm btn-danger">Xóa</a>
							</td>
						</tr>
						
						
						<%}
					
					%>
					<tr>
					<td>Tổng tiền </td>
					<td></td>
					
					<td><%=tongTien%></td>
					<td>K</td>	
					</tbody>
				</table>

			</div>
		</div>
	</div>
	
	<div class="col-md-7">
	<div class="card">
	<div class="card-body">

	
						<h3 class="text-center text-success">Chi tiết đơn đặt hàng</h3>
						 <form action="order" method="post">
						 <input type="hidden" value="${khachhangobj.idKhachHang}" name="id" >
						 
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Họ và Tên</label> <input type="text" name="tenkhachhang"
										class="form-control" id="inputEmail4" value="${khachhangobj.hoVaTen}" >
								</div>
								<div class="form-group col-md-6">
									<label for="inputEmail4">Email</label> <input type="text" name="email"
										class="form-control" id="inputEmail4" value="${khachhangobj.diaChiEmail}" >
								</div>
								</div>
															
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Số điện thoại</label> <input type="number" name="sdt"
										class="form-control" id="inputEmail4" value="${khachhangobj.SDT}">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Tỉnh</label> <input
										type="text" name="diachi" class="form-control" id="inputEmail4" required="required"
										>
								</div>
							</div>
							
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Thành phố/Thị Xã</label> <input type="text" name="diadanh"
										class="form-control" id="inputEmail4" required="required" >
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Quận huyện/ Phường xã</label> <input
										type="text" name="thanhpho" class="form-control" id="inputEmail4" required="required"
										>
								</div>
							</div>
							
							
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Tên số nhà </label> <input type="text" name="tensonha"
										class="form-control" id="inputEmail4" required="required">
								
								
								<div class="form-group col-md-6">
							<label>Phương thức thanh toán</label> <select
									class="form-select form-select-sm"
									aria-label=".form-select-sm example" name="pay">
									<option value="noselect">Phương thức thanh toán</option>
									<option value="online">Thanh toán online</option>
									<option value="nhanhang">Thanh toán khi nhận hàng</option>
									
								</select>
							</div>
							
								
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Ngày Đặt hàng</label> <input
										type="date" name="ngayhientai" class="form-control"
										id="inputPassword4">
								</div>







							</div>
							
							
							<div>
							<button class="btn btn-warning">Đặt hàng</button>
							<a href="index.jsp" class="btn btn-success"> Tiếp tục mua sắm</a>
							</div>
							
							</form>
						
	</div>
   </div>
	</div>
	
</div>
</div>
<%@include file="all/footer.jsp" %>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var inputNgayDatHang = document.getElementById("inputPassword4");
        var ngayHienTai = new Date().toISOString().split("T")[0];
        inputNgayDatHang.value = ngayHienTai;
    });
</script>

</body>
</html>