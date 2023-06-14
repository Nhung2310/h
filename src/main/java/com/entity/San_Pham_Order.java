package com.entity;

import java.sql.Date;

public class San_Pham_Order {

	private int id;
	private String orderId;
	private String tenKhachHang;
	private String email;
	private String sdt;
	private String fulladd;
	
	private String tenSP;
	private String thuongHieu;
	private String gia;
	private Date ngayDatHang;
	
	
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public String getThuongHieu() {
		return thuongHieu;
	}
	public void setThuongHieu(String thuongHieu) {
		this.thuongHieu = thuongHieu;
	}
	public String getGia() {
		return gia;
	}
	public void setGia(String gia) {
		this.gia = gia;
	}
	private String hinhThucThanhToan;
	
	public San_Pham_Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getFulladd() {
		return fulladd;
	}
	public void setFulladd(String fulladd) {
		this.fulladd = fulladd;
	}
	public String getHinhThucThanhToan() {
		return hinhThucThanhToan;
	}
	public void setHinhThucThanhToan(String hinhThucThanhToan) {
		this.hinhThucThanhToan = hinhThucThanhToan;
	}
	
	public Date getNgayDatHang() {
		return ngayDatHang;
	}
	public void setNgayDatHang(Date ngayDatHang) {
		this.ngayDatHang = ngayDatHang;
	}
	@Override
	public String toString() {
		return "San_Pham_Order [id=" + id + ", orderId=" + orderId + ", tenKhachHang=" + tenKhachHang + ", email="
				+ email + ", sdt=" + sdt + ", fulladd=" + fulladd + ", tenSP=" + tenSP + ", thuongHieu=" + thuongHieu
				+ ", gia=" + gia  + ", hinhThucThanhToan=" + hinhThucThanhToan +", ngayDatHang=" + ngayDatHang+ "]";
	}
	
	
	
	
	
	
	
}
