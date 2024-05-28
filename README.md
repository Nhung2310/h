I.	KHẢO SÁT VÀ PHÂN TÍCH HỆ THỐNG
1.	Tên đề tài: Xây dựng website bán nước hoa
2.	Sử dụng:
-	JSP Servlet, MySQL
-	Email
-	HTML, CSS, Bootstrap và một vài thư viện được thiết kế sẵn.
3.	Công cụ sử dụng
-	MySQL Workbench 8.0 CE
-	Eclispe IDE.
4.	Phân quyền và chức năng
-	Có 3 nhóm phân quyền: người dùng chưa có tài khoản, người dùng đã có tài khoản (khách hàng) và admin
-	Người dùng chưa có tài khoản:
	Tìm kiếm, lọc các sản phẩm nước hoa
	Xem thông tin sản phẩm của cửa hàng và khách hàng pass lại
	Đăng kí tài khoản
-	Khách hàng
	Có các quyền như người dùng chưa có tài khoản
	Đăng nhập, đăng xuất tài khoản
	Đổi mật khẩu, quên mật khẩu
	Chỉnh sửa thông tin cá nhân
	Thêm, xóa sản phẩm trong giỏ hàng
	Đặt mua hang
	Đăng sản phẩm muốn tặng hoặc pass lại
-	Admin 
	Quản lí tài khoản, khách hang, xem đơn hàng của khách hàng đã đặt.
	Quản lí sản phẩm (thêm, xóa, sửa sản phẩm), xem sản phẩm
5.	Phân tích hệ thống:
•	Gồm 4 bảng:
-	gio_hang
-	khach_hang
-	nuoc_hoa
-	sp_order
* Diagram
  
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/1e2e9f5a-be61-4344-a2e2-6a387e945962)

•	Chi tiết bảng:
a.	Table dbo.gio_hang

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/c3bb6786-5ca3-4a6f-b77b-5ab0b2173735)

b.	Table dbo.khach_hang

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/db43a07e-6558-4c51-9bfd-aae8c5ee2e58)

c.	Table dbo.nuoc_hoa

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/8dc8ee37-1dfd-4bbf-a748-670098754565)

 
d.	Table dbo.sp_order
 
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/f6ff79a8-5354-4d87-ba2f-b3971912bbb3)
 
 II.	GIAO DIỆN
1.	Trang chủ
Người dùng chưa có tài khoản và khách hàng

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/d4521793-6f70-4e26-8985-9aa324bd1fb9)

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/0de3b13d-83f1-41c0-b295-f710d61a5456)

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/8b5ed8af-0de6-488d-bdec-566e08ee0c4b)
 
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/ac0600ab-1441-4a38-9965-894a13a10ebd)
 
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/ff41b211-f32d-4263-996b-9d911f845e09)
 
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/feeb0586-1235-4786-a84e-8b8d803a7c0c)
 
Trang chủ của admin:

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/4235fbfc-226e-4ad2-bcbb-d37e2fc216dc)

2.	Trang đăng ký và đăng nhập

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/31388bc1-edbb-4ba9-866d-e17a1a2c8a55)

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/b1d7c539-b5ad-433c-9367-4006df053c4a)


3.	Trang xem tất cả sản phẩm được khuyến mãi

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/6b669b73-39f3-4851-bc2b-392e32815cc9)

4.	Trang xem tất cả sản phẩm mới về

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/5edbae19-9036-4172-b4d6-269a11318158)


 
5.	Lựa chọn các sản phẩm theo mục

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/cb80f44d-3c0d-4f53-9608-964fa1275570)

6.	Trang giới thiệu cửa hàng
 
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/4794a8df-9b51-4617-8390-2c23e9945d06)

7.	Trang lấy lại mật khẩu
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/e50ba23e-2137-4905-9a7d-998e5dc5dd5c)

8.	Giao diện khi khách hàng đăng nhập
 
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/aea77642-6a98-467a-a762-7719e9231c23)

9.	Trang khi người nhập ấn vào chỉnh sửa
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/b7bf2ffa-cc07-40ec-b570-99f3981eeb5e)

11.	 Trang pass lại sản phẩm
 
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/82152a2b-2f55-4b63-99db-91717991e2dc)




11.	 Trang xem lại sản phẩm pass
![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/834df3ec-2beb-4893-9de3-3a5e27ceced8)

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/d4501225-eea0-4f40-91f9-8a7245b171cc)

 
12.	 Giỏ hàng của khách hàng
 
 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/53abf906-6ab2-48fa-93ca-8282604cd171)

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/ad673e2e-9e7f-4878-a086-fa57f33d5d11)

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/191dd46c-9e0e-4625-84a9-b4d78742fefa)

 ![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/8c0b413a-a200-4480-a5ca-ddc1aaa2e50f)

13.	 Admin
13.1. Thêm tất cả sản phẩm nước hoa

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/1775e4fd-02ba-4e1c-b0fe-e910d741715c)

13.2. Xem tất cả sản phẩm nước hoa

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/873cd8c3-af4a-421d-92bb-557e51530341)

13.3. Sửa thông tin sản phẩm nước hoa 

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/735a97a7-cdab-4d2d-9c6d-5061c416d6a4)

13.4. Xem các đơn khách hàng đã đặt  

![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/2e526e05-e634-41cf-9bcb-0e794fdaacd7)


III.	TÍNH NĂNG
a.	Tính năng của người dùng chưa có tài khoản
1.	Tìm kiếm
-	Người dùng nhập nội dung cần tìm kiếm vào thanh tìm kiếm sau đó nhấn “Tìm”, khi đó các sản phẩm phù hợp theo nội dung tìm kiếm sẽ được hiện ra. Ví dụ khi người dùng nhập “dior” và nhấn tìm kiếm thì danh sách các sản phẩm có chữ “dior” sẽ hiện ra:
 


![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/bbb67226-3669-4cdb-bb4e-8b6c10649e95)



![image](https://github.com/Nhung2310/web_nuoc_hoa/assets/89560779/853034a6-8414-42bc-b3d2-4082906f9fd5)



