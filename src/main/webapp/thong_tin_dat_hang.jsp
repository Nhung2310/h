<%@page import="com.entity.San_Pham_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPOrderImpl"%>
<%@page import="com.entity.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thong tin đặt hàng của khách hàng</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.table-pink th,
.table-pink td {
  color: pink;
}


</style>

</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>
<div class="card my-5">
 <div class="card-header text-center ">
    Lịch sử đặt hàng
  </div>
  <div class="card-body">
  
    <div class="table-responsive">
      <table class="table table-striped">
        <thead>
          <tr>
            <th>Mã đơn hàng</th>
            <th>Tên</th>
            <th>Tên sản phẩm</th>
            <th>Thương Hiệu</th>
            <th>Tổng tiền</th>
            <th>Phương thức thanh toán</th>
            <th>Ngày đặt hàng</th>
          </tr>
        </thead>
        <tbody>
        <% 
       KhachHang kh=(KhachHang)session.getAttribute("khachhangobj");
        SPOrderImpl dao=new SPOrderImpl(DBConnect.getConn());
     List<San_Pham_Order > slist=  dao.getSP(kh.getDiaChiEmail());
     for(San_Pham_Order s:slist)
        
        {%>
        
         <tr>
            <th scope="row"><%=s.getOrderId() %></th>
            <td><%=s.getTenKhachHang() %></td>
            <td><%=s.getTenSP() %></td>
            <td><%=s.getThuongHieu() %></td>
            <td><%=s.getGia() %></td>
            <td><%=s.getHinhThucThanhToan() %></td>
            <td><%=s.getNgayDatHang() %></td>
          </tr>
       
        
        <%} %>
         
        </tbody>
      </table>
    </div>
  </div>
</div>
<hr>
<br>


</body>
</html>