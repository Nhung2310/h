<%@page import="com.entity.SanPham"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.SPDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:edit_sp </title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
  <div class="caontainer p-5">
  <div class="col-md-4 offset-md-4">
          <div class="card">
           <div class="card-body">
           
   <div class="text-center"><h4>SỬA THÔNG TIN SẢN PHẨM</h4></div>
   
   
     
      
       <%
       int id=Integer.parseInt(request.getParameter("id"));
       SPDAOImpl dao=new SPDAOImpl(DBConnect.getConn());
       SanPham s=dao.getSPByID(id);
       
       
       %>
            
             <div class="row">
              <form action="../editsp" method="post">
               <input type="hidden" name="id" value="<%=s.getIdNuoc_Hoa()%>">
                
             <!-- <div class="text-center"> -->
              <div class="form-group">
                <label for="exampleInputEmail">Tên Nước Hoa* </label>
              <input name="tensp" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp" value="<%=s.getTenNuocHoa() %>">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail">Tên Thương Hiệu* </label>
              <input name="tenthuonghieu" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp" value="<%=s.getTenthuongHieu() %>">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail"> Dung Tích* </label>
              <input name="dungtich" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp" value="<%=s.getDungTich() %>">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail"> Giá Gốc* </label>
              <input name="giagoc" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp" value="<%=s.getGiaGoc() %>">
              </div>
              
              <div class="form-group">
                <label for="exampleInputEmail"> Giá Bán* </label>
              <input name="giaban" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp" value="<%=s.getGiaBan()%>">
              </div>
              
              
              
             
            <div class="form-group">
                <label for="inputState">Trạng Thái </label>
              <select id="inputState" name="trangthai" class="form-control">         
             <%if("Active".equals(s.getTrangThai())) 
             {%>
            	  <option value=" Active">Khuyến mãi</option>
             <option value=" Inactive">Bình thường</option>  
            
            <% }else{%>
            	
            	 
            	 <option value=" Inactive">Bình thường</option>  
                 <option value=" Active">Khuyến mãi</option>
          <% }
             
             %>
                                 
             </select>
              </div>
               <button type="submit" class="btn btn-primary"> Cập nhật</button>
              </form>  
                 </div> 
                                   
              </div>
            </div>
            </div>
           </div>

</body>
</html>