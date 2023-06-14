<!DOCTYPE html>
<html>

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lọc sản phẩm</title>
   <style type="text/css">
   h3
   {
   color:black;
   font-size: 1.5em;
   }
   .fomatselect
   {
   		width: 15em;
   		height: 1,5em;
   }
   body
   {
   	
   }
   .left-sidebar
   {
   margin-top:5.1em;
   }
   
   
   </style>
     
</head>
<body>
    <div class="row">
       
            <div class="left-sidebar">
                <h3>LỌC KẾT QUẢ</h3>
                <form class="form-inline my-2 my-sm-0" action="all_sp_loc.jsp" method="GET">
<div class="form-group">
                    <label for="type">Loại sản phẩm:</label>
                    <select id="type" name="loai" class="form-control fomatselect">
                      <option value="">-- Chọn loại sản phẩm --</option>
                      <option value="Yêu thích nhất">Yêu thích nhất</option>
                      <option value="Mới nhất">Mới nhất</option>
                      <option value="Pass lại">Pass lại</option>
                      <option value="Nước hoa nam">Nước hoa nam</option>
                      <option value="Nước hoa nữ">Nước hoa nữ</option>
                      
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="price">Giá:</label>
                    
                    <div>
                    
                    <select id="price" name="donGia" class="form-control fomatselect">
                        <option value="">-- Chọn giá --</option>
                        <option value="Dưới 1 triệu">Dưới 1 triệu</option>
                        <option value="Từ 1 đến 3 triệu">Từ 1 đến 3 triệu</option>
                        <option value="Trên 3 triệu">Trên 3 triệu</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="brand">Thương hiệu:</label>
                   <div>
                    <select id="brand" name="thuongHieu" class="form-control fomatselect">
                        <option value="">-- Chọn Thương Hiệu --</option>
                        <option value="Chanel">Chanel</option>
                        <option value="Dior">Dior</option>
                        <option value="Burberry">Burberry</option>
                        <option value="Gucci">Gucci</option>
                      </select>
                   </div>
                  </div>
                  <div class="form-group">
                    <label for="size">Dung tích:</label>
                   <div>
                    <select id="size" name="dungTich" class="form-control fomatselect">
                        <option value="">-- Chọn Dung tích --</option>
                        <option value="30 ml">30 ml</option>
                        <option value="50 ml">50 ml</option>
                        <option value="150 ml">150 ml</option>
                      </select>
                   </div>
                  </div>
                  <br>
                 <div>
                 <button class="btn btn-outline-secondary" type="submit">Tìm</button>
                 </div>
                </form>
              </div>
        </div>

    
      
    

</body>
</html>