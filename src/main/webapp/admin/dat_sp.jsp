<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPOrderImpl"%>
<%@page import="com.entity.San_Pham_Order"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.bg-pink {
  background-color: #FFB6C1 !important;
}

</style>
<meta charset="UTF-8">
<title>Admin: dat_sp</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<c:if test="${empty khachhangobj }">
 <c:redirect url="../dangnhap.jsp"/>
 </c:if>

<%@include file="navbar.jsp" %>
<div style="display: flex; justify-content: center;">
  <img src="../icon/wellcom.gif" alt="wellcom" style="width: 10%;">
</div>


 <h3 class="text-center">Hello Admin</h3>
 <table class="table table-striped">
  <thead class="bg-pink">
  <tr>
  <th scope="col">Id</th>  
  <th scope="col">Tên</th> 
  <th scope="col">Email</th> 
  <th scope="col">Địa chỉ</th> 
  <th scope="col">Số điện thoại</th> 
  <th scope="col">Tên sản phẩm</th> 
  <th scope="col">Thương Hiệu</th> 
   <th scope="col">Giá</th> 
  <th scope="col">Loại thanh toán</th>
  <th scope="col">Ngày đặt hàng</th>
  
  </tr>
</thead>
<tbody>
  <%
  SPOrderImpl dao=new SPOrderImpl(DBConnect.getConn());
  List<San_Pham_Order> slist=dao.getALLSPOrder();
  for(San_Pham_Order s:slist)
  {%>
  
    <tr>
  <th scope="row"><%=s.getOrderId() %></th>  

   <td ><%=s.getTenKhachHang() %></td> 
    <td ><%=s.getEmail() %></td> 
     <td ><%=s.getFulladd() %></td> 
      <td ><%=s.getSdt() %></td> 
      <td ><%=s.getTenSP() %></td> 
      <td ><%=s.getThuongHieu() %></td> 
       <td ><%=s.getGia() %></td> 
        <td ><%=s.getHinhThucThanhToan() %></td>
        <td ><%=s.getNgayDatHang() %></td>  
        
         
  
  

</tr>
	  
  <% }
  %>
  
  
  



  
</tbody>

</table>
 <div style="margin-top:130px">
<%@include file="footer.jsp" %></div>
 
</body>
</html>