<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thay đổi địa chỉ khách hàng</title>
<%@include file="all/allcss.jsp"%>
<style type="text/css">
.card {
  margin-top: 20px;
  border: none;
  border-radius: 5px;
  box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.2);
}

.card-title {
  font-size: 24px;
  font-weight: bold;
}

.form-group label {
  font-weight: bold;
}

.btn-primary {
  margin-top: 10px;
}

@media (min-width: 768px) {
  .offset-md-3 {
    margin-left: 25%;
  }
  
  .col-md-6 {
    width: 50%;
  }
}

</style>

</head>
<body style="background-color: #f2e7de;">
<%@include file="all/navbar.jsp"%>

	<div class="container">
  <div class="row">
    <div class="col-md-6 offset-md-3">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title text-center">Thêm địa chỉ</h5>
          <form>
            <div class="form-group">
              <label for="inputAddress">Địa chỉ</label>
              <input type="text" class="form-control" id="inputAddress" placeholder="Số nhà, tên đường">
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputCity">Thành phố</label>
                <input type="text" class="form-control" id="inputCity">
              </div>
              <div class="form-group col-md-6">
                <label for="inputState">Tỉnh/Thành phố</label>
                <input type="text" class="form-control" id="inputState">
              </div>
            </div>
            <div class="form-group">
              <label for="inputDistrict">Quận/Huyện</label>
              <input type="text" class="form-control" id="inputDistrict">
            </div>
            <div class="form-group">
              <label for="inputWard">Phường/Xã</label>
              <input type="text" class="form-control" id="inputWard">
            </div>
             <div class="text-center">
            <button type="submit" class="btn btn-primary">Thêm địa chỉ</button>
          </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>


<%@include file="all/footer.jsp" %>
</body>
</html>