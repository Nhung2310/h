<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Poppins:400,300,500);
html {
  box-sizing: border-box;
}
*,
*:before,
*:after {
  box-sizing: inherit;
}
body {
  margin: 0;
  padding: 96px;
  font-size: 21px;
  background: #fff;
  color: #000;
  font-family: "Poppins", sans-serif;
}
section.card {
  background: #FFC0CB;
  background: -webkit-linear-gradient(to right, #1CB5E0, #000046); 
  background: linear-gradient(to right,#ffc0cb,#ffc0cb);
  border-radius: 24px 24px 24px 48px;
  padding: 48px 48px 48px 308px;
  margin: 84px 0;
  min-width: 640px;
  display: flex;
  flex-direction: row;
  align-self: flex-start;
  position: relative;
  box-shadow: 5px 0 0 0 rgba(204,204,204,0.3), -5px 0 0 0 rgba(204,204,204,0.3), 0 5px 0 0 rgba(204,204,204,0.3);
}
section.card .text-content {
  display: flex;
  flex-direction: column;
  width:calc(60vw - 192px);
}
section.card .text-content h3 {
  margin: 0;
  font-size: 1.5em;
  max-width: 20ch;
  color: #262323f7;
}
section.card .text-content p {
  margin: 25px 0 24px;
  color: #262323f7;
}
section.card .text-content a {
  border: 3px solid #0000009c;
  color: #262323;
  align-self: flex-start;
  text-decoration: none;
  padding: 16px 32px;
  border-radius: 12px;
  transition: 400ms all;
}
section.card .text-content a:hover {
  background: #bf6373;
  color: white;
}
section.card .visual {
  width: 240px;
  height: 100%;
  position: absolute;
  top: -24px;
  left: 24px;
  overflow: hidden;
  border-radius: 24px;
}
section.card .visual img {
  height: 110%;
}
article {
  margin: auto;
  display: block;
  width:calc(60vw + 248px);
  max-width:calc(920px + 248px);
  min-width:calc(640px + 248px); 
}
@media all and (max-width: 1100px) {
  body {
    padding: 96px 48px 24px;
  }
  article {
    width: 100%;
    min-width: 100%;
  }
  section.card {
    min-width: 100%;
  }
  section.card .text-content {
    width: 100%;
  }
}
@media all and (max-width: 720px) {
  body {
    padding: 48px 24px 0;
  }
  section.card {
    margin: 64px 0;
    padding: 88px 36px 36px;
    flex-direction: column;
    border-radius: 24px;
  }
  section.card .text-content h3 {
    max-width:calc(100% - 150px);
    font-size: 1em;
  }
  section.card .text-content p,
  section.card .text-content a {
    font-size: 0.8em;
  }
  section.card .visual {
    width: 150px;
    height: 150px;
    right: 16px;
    left: auto;
    border-radius: 50%;
  }
  section.card .visual img{
    width: 100%;
    height: auto;
    }
}

</style>
</head>
<body>

<head>
  <meta charset="utf-8" />
  <meta property="og:type" content="website" />
  <meta content="summary_large_image" name="twitter:card" />
  <meta content="width=device-width, initial-scale=1" name="viewport" />
  <link href="" rel="stylesheet" type="text/css" />
</head>

<body>
  <article>
    <section class="card">
      <div class="text-content">
        <h3>Elegant quý phái</h3>
        <p>
					Nước hoa là một trong những sản phẩm làm đẹp không thể thiếu trong
					tủ đồ của bất kỳ ai. Với mùi hương thơm ngát, nước hoa không chỉ
					mang lại cảm giác tươi mới, thoải mái mà còn giúp tăng cường sự tự
					tin, gợi cảm và quyến rũ. </p>
					<p>Thương hiệu nước hoa của chúng tôi đã
					được thành lập với mục đích mang đến cho khách hàng những trải
					nghiệm tuyệt vời nhất về mùi hương và chất lượng sản phẩm. Chúng
					tôi đưa ra các lựa chọn phong phú về mùi hương cho cả nam và nữ, từ
					những hương thơm nổi bật, sang trọng đến những hương thơm trẻ
					trung, năng động. Chất lượng sản phẩm của chúng tôi được đảm bảo
					bởi sự chọn lọc kỹ càng và kiểm tra chất lượng nghiêm ngặt. Chúng
					tôi sử dụng những thành phần tốt nhất và kết hợp chúng để tạo ra
					những mùi hương độc đáo và đa dạng. Hãy để thương hiệu nước hoa của
					chúng tôi làm cho bạn tự tin, quyến rũ và thể hiện được cá tính của
					mình.</p>
					<p>Chúng tôi cam kết sẽ mang đến cho bạn những trải nghiệm tuyệt
					vời nhất về nước hoa.</p>
					<a
						href="index.jsp">Đến ngay</a></div>
      <div class="visual">
        <img src="slider/gioithieu1.jpg" alt="" />
      </div>
    </section> 
  </article>
</body>
</html>

</body>
</html>


