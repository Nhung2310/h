package com.entity;

public class GioHang {

	 private int idgio_hang ;
	private int idsan_pham ;
	private int  idkhachhang;
	private String tenNuocHoa; 
	private String tenThuongHieu ;
	private Double gia ;
	private Double tong_tien ;
	
	public int getIdgio_hang() {
		return idgio_hang;
	}
	public void setIdgio_hang(int idgio_hang) {
		this.idgio_hang = idgio_hang;
	}
	public int getIdsan_pham() {
		return idsan_pham;
	}
	public void setIdsan_pham(int idsan_pham) {
		this.idsan_pham = idsan_pham;
	}
	public int getIdkhachhang() {
		return idkhachhang;
	}
	public void setIdkhachhang(int idkhachhang) {
		this.idkhachhang = idkhachhang;
	}
	public String getTenNuocHoa() {
		return tenNuocHoa;
	}
	public void setTenNuocHoa(String tenNuocHoa) {
		this.tenNuocHoa = tenNuocHoa;
	}
	
	public String getTenThuongHieu() {
		return tenThuongHieu;
	}
	public void setTenThuongHieu(String tenThuongHieu) {
		this.tenThuongHieu = tenThuongHieu;
	}
	public double getGia() {
		return gia;
	}
	public void setGia(double gia) {
		this.gia = gia;
	}
	public double getTong_tien() {
		return tong_tien;
	}
	public void setTong_tien(double tong_tien) {
		this.tong_tien = tong_tien;
	}
	@Override
	public String toString() {
		return "GioHang [idgio_hang=" + idgio_hang + ", idsan_pham=" + idsan_pham + ", idkhachhang=" + idkhachhang
				+ ", tenNuocHoa=" + tenNuocHoa + ", tenThuongHieu=" + tenThuongHieu + ", gia=" + gia + ", tong_tien="
				+ tong_tien + "]";
	}
	
	
}
