<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@page import="com.entity.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <%@page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: all_sp</title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div style="display: flex; justify-content: center;">
  <img src="../icon/wellcom.gif" alt="wellcom" style="width: 10%;">
</div>
<c:if test="${empty khachhangobj }">
 <c:redirect url="../dangnhap.jsp"/>
 </c:if>

 <h3 class="text-center">Hello Admin</h3>
 
 <c:if test="${not empty succMsg }">
    <h5 class="text-center text-success">${succMsg}</h5>
   <c:remove var="succMsg" scope="session"/>
</c:if>
   <c:if test="${not empty faileMsg }">
    <h5 class="text-center text-danger">${faileMsg}</h5>
    <c:remove var="faileMsg" scope="session"/>
</c:if>
 <table class="table table-striped">
  <thead class="bg-primary">
  <tr>
  <th scope="col">ID</th> 
  <th scope="col">Image</th>  
  <th scope="col">Tên</th> 
  <th scope="col">Thương Hiệu</th> 
  <th scope="col">Dung tích</th> 
  <th scope="col">Giá</th> 
  <th scope="col">Loại</th> 
  <th scope="col">Trạng Thái</th> 
  <th scope="col">Thực hiện</th> 
</tr>
</thead>
<tbody>
<%
 SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
       List<SanPham> list =dao.getAllSP();
     for(SanPham s:list)
     {
     %>
			<tr>
				<td><%=s.getIdNuoc_Hoa() %></td>
				<td><img src="../sp/<%=s.getPhoto() %>" 
				style="width:50px;height:50px;"></td>
				<td><%=s.getTenNuocHoa() %></td>
				<td><%=s.getTenthuongHieu() %></td>
				<td><%=s.getDungTich() %> ml</td>
				<td><%=s.getGiaBan() %></td>
				<td><%=s.getLoaiNuocHoa() %></td>
				<td><%=s.getTrangThai() %></td>
				<td><a href="edit_sp.jsp?id=<%=s.getIdNuoc_Hoa() %>" class="btn btn-sm btn-primary"><i class="bi bi-pencil-square"></i>Sửa</a> 
				<a href="../delete?id=<%=s.getIdNuoc_Hoa() %>" class="btn btn-sm btn-danger"><i class="bi bi-trash3-fill"></i>Xóa</a>
				</td>
			</tr>

			<%
			}
			%>


</tbody>

</table>
 <div style="margin-top:130px">
<%@include file="footer.jsp" %></div>
 
 
</body>
</html>