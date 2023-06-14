<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:add_sp </title>
<%@include file="allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container">
 <div class="card">
    <div class="card-body">
        <div class="row">
   <div class="text-center"><h3>THÊM SẢN PHẨM</h3></div>
   
   <c:if test="${not empty succMsg }">
   <p class="text-center text-success">${succMsg}</p>
  
  <c:remove var="succMsg" scope="session"/>
</c:if>
   
   <c:if test="${not empty faileMsg }">
   <p class="text-center text-danger">${faileMsg}</p>
   <c:remove var="faileMsg" scope="session"/>
</c:if>
     
       <!--  <div class="col-md-4 offset-md-4">
          <div class="card">
           <div class="card-body"> -->
            <div class="col-md-6">
            <div class="text-center">
                <img src="../slider/dangky.png" class="img-fluid" alt="Image" height="180%" width="200%">
                </div>
            </div>
            <div class="col-md-6">
              <form action="../them_sp" method="post"
                enctype="multipart/form-data">
               <div class="row">
               <div class="col-sm-6">
           
             <div class="text-center">
             <div class="mb-2">
                <label for="exampleInputEmail">Tên Nước Hoa* </label>
              <input name="tensp" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              <div class="mb-2">
                <label for="inputState">Tên Thương Hiệu </label>
              <select id="inputState" name="tenthuonghieu" class="form-control">         
             <option selected>-- chọn thương hiệu--</option>
             <option value="Chanel">Chanel</option>
             <option value="Gucci">Gucci</option>
             <option value="Burberry">Burberry</option>
             <option value="Dior">Dior</option>
             
                       
             </select>
              </div>
              
            
              
             <div class="mb-2">
                <label for="exampleInputEmail"> Dung tích (ml)* </label>
              <select id="inputState" name="dungtich" class="form-control">         
             <option selected>--chọn dung tích--</option>
             <option value="30">30</option>
             <option value="100">50</option>
             <option value="150">150</option>                       
             </select>
              </div>
              
            <div class="mb-2">
                <label for="exampleInputEmail"> Giá Bán* </label>
              <input name="giaban" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              <div class="mb-2">
                <label for="exampleInputEmail"> Giá Gốc* </label>
              <input name="giagoc" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              
             
           <div class="mb-2">
                <label for="inputState">Trạng Thái </label>
              <select id="inputState" name="trangthai" class="form-control">         
             <option selected>-- chọn trạng thái--</option>
             <option value=" active">Khuyến mãi</option>
             <option value=" inactive">Bình thường</option>                       
             </select>
              </div>
               
                 </div>                  
              </div>
              
             
               
               
              <div class="col-sm-6">
              
              
             <div class="mb-2">
                <label for="exampleInputEmail"> Số Lượng* </label>
              <input name="soluong" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
             
             </div>
            <div class="mb-2">
                <label for="exampleInputEmail"> Năm sản xuất* </label>
              <input name="namsanxuat" type="date" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              
              <div class="mb-2">
                <label for="inputState">Loại </label>
              <select id="inputState" name="loai" class="form-control">         
             <option selected>-- chọn loại nước hoa --</option>            
             <option value="yeuthicnhat">Nước Hoa Yêu Thích Nhất</option>
             <option value="doanhnhan">Nước Hoa Doanh Nhân</option>
             <option value="nuochoanam">Nước Hoa Nam</option>
             <option value="nuochoanu">Nước Hoa Nữ</option>
              <option value="moi">Moi ra</option>
             <option value="pass">Pass lại</option>
                       
             </select>
              </div>
              
                
            
              
             <div class="mb-2">
                <label for="exampleInputEmail"> Xuất xứ* </label>
              <input name="xuatxu" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
              
                <div class="mb-2">
                <label for="exampleInputEmail"> Mô tả* </label>
              <input name="mota" type="text" class="form-control"
             id= "exampleInputEmail" aria-describedby="emailHelp">
              </div>
              
             <div class="mb-2">
                <label for="exampleFormConTrolFile1"> Upload Photo* </label>
              <input name="photo" type="file" class="form-control-file"
             id= "exampleFormConTrolFile1" >
              </div>
              </div>
              
              
              </div>
             <div class="text-center">
              <button type="submit" class="btn btn-primary">Thêm</button></div>
              
                      
            
                </form>       
            </div>
            
 </div>  
</div>
</body>
</html>