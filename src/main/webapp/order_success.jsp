<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.img1{
width:200px;
transform:translatex(0px);
animation:float 6s ease-out infinite;
}

@keyframes float{
0%{
transform:translateY(0px);
}
50%{
transform:translateY(-60px);
}

100%{
transform:translateY(0px);
}


}

.container {
  margin-top: 60px;
}
</style>
</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

 <div class="container text-center ">
  <div class="success-message">
    <img src="slider/chucmung.png" alt="Đặt hàng thành công" width="200" height="150" class="img1">
    <h3>Chúc mừng bạn đã đặt hàng thành công!</h3>
    <h5>Cảm ơn bạn đã tin tưởng và mua sản phẩm của chúng tôi.</h5>
    <h5>Sản phẩm sẽ được giao đến địa chỉ của bạn trong vòng 7 ngày kể từ ngày đặt hàng.</h5>
    <div class="buttons">
      <a href="index.jsp" class="btn btn-primary mt-3">Trang chủ</a>
      <a href="thong_tin_dat_hang.jsp" class="btn btn-danger mt-3">Xem đơn hàng</a>
    </div>
  </div>
</div>

<%@include file="all/footer.jsp" %>
</body>
</html>