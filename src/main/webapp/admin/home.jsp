<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Home</title>
<%@include file="allcss.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color:black;
}

a:hover{
text-decoration:none;
color: black;
}


</style>
</head>
<body style="background-color:#f2e7de;">
<%@include file="navbar.jsp" %>

<c:if test="${empty khachhangobj }">
 <c:redirect url="../dangnhap.jsp"/>
 </c:if>


<div class="container">
  <div class="row p-5">
 
    <div class="col-md-3">
       <a href="them_sp.jsp">
           <div class="card">
               <div class="card-body text-center">       
        <h2> <i class="bi bi-bag-plus-fill fa-3x text-primary"></i></h2>
        <br>
        <h5>  Thêm sản phẩm </h5> 
          -----------                 
        </div>
      </div> 
      </a>   
    </div>
  
  
 <div class="col-md-3">
    <a href="all_sp.jsp">
      <div class="card">
        <div class="card-body text-center ">        
        <h2><i class="bi bi-shop  fa-3x text-danger"></i></h2><br>       
        <h5> Tất cả sản phẩm</h5> 
          -----------                 
        </div>
      </div> 
      </a>   
    </div>
    
    
  <div class="col-md-3">
  <a href="dat_sp.jsp">
      <div class="card">
        <div class="card-body text-center ">        
        <h2><i class="bi bi-cart-plus-fill fa-3x text-warning"></i></h2><br>       
        <h5> Đặt hàng</h5> 
          -----------                 
        </div>
      </div>
      </a>    
    </div>    
    
    
  <div class="col-md-3">
  <a data-bs-toggle="modal" data-bs-target="#exampleModal">
      <div class="card">
        <div class="card-body text-center ">       
        <h2> <i class="bi bi-box-arrow-in-right fa-3x text-primary"></i></h2>
        <br>
        <h5> Đăng xuất  </h5> 
          -----------                 
        </div>
      </div> 
      </a>   
    </div>
    
  </div>

</div>


<!--  đăng xuất logout modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel"></h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="text-center">
      <h4> Bạn chắc chắn  muốn đăng xuất</h4>
      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
        <a href ="../dangxuat" type="button" class="btn btn-primary text-while">Đăng xuất></a>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
 </div>
<!--  End  đăng xuất-->

<div style="margin-top:130px">
<%@include file="footer.jsp" %></div>

</body>
</html>