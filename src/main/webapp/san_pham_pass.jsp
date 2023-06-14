<%@page import="java.util.List"%>
<%@page import="com.entity.KhachHang"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@page import="com.entity.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Sản phẩm khách hàng pass lại</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.center {
  margin: 0 auto;
  width: 75%;
  text-align: center;
}

table {
  border-collapse: collapse;
  width: 100%;
  margin-top: 20px;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #808080;
  color: white;
}

button {
  background-color: #808080;
  color: white;
  border: none;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}


</style>
</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

<c:if test="${not empty succMsg}">
 <p class="text-center text-success"> ${succMsg}</p>
 <c:remove var="succMsg" scope="session"/>
</c:if>

<div class="center my-5">
  <h2>Sản phẩm đã đăng</h2>
  <table>
    <thead>
      <tr>
     <th scope="col">Image</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col">Thương hiệu</th>
        <th scope="col">Số lượng</th>
        <th scope="col">Loại</th>
        <th scope="col">Chọn</th>
      </tr>
    </thead>
    <tbody>
    <%
    KhachHang kh=(KhachHang)session.getAttribute("khachhangobj");
	
    String email=kh.getDiaChiEmail();
    
    SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
    List<SanPham> list=dao.getSPByPass(email,"pass");
    
    for(SanPham s:list){
    %>
    
      <tr>
      <td><img src="sp/<%=s.getPhoto() %>" 
				style="width:50px;height:50px;"></td>
        <td><%=s.getTenNuocHoa() %></td>
        <td><%=s.getTenthuongHieu() %></td>
        <td><%=s.getGiaBan() %></td>
        <td><%=s.getLoaiNuocHoa() %></td>
        <td><a href="delete_pass_sp?email=<%=email%>&&idsp=<%=s.getIdNuoc_Hoa()%>" 
        class="btn btn-sm btn-danger">Xóa</a></td>
      </tr>
    <% }%>
    </tbody>
  </table>
</div>



</body>
</html>