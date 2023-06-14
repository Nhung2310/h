package com.entity;

import java.sql.Date;

public class KhachHang {
	private int  idKhachHang;
	private String tenDangNhap;
	private String matKhau;
	private String gioiTinh;
	private String hoVaTen;
	private String diaChi;
	
	private Date ngaySinh;
	private String SDT;
	private String diaChiEmail;
	private boolean dangKhyNhanBangTin;
	private String maXacThuc;
	private Date thoiGianHieuLucCuaMaXacThuc;
	private boolean trangThaiXacThuc;
	private String duongDanAnh;
	
	
	
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getIdKhachHang() {
		return idKhachHang;
	}
	public void setIdKhachHang(int i) {
		this.idKhachHang = i;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}
	
	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getDiaChiEmail() {
		return diaChiEmail;
	}
	public void setDiaChiEmail(String diaChiEmail) {
		this.diaChiEmail = diaChiEmail;
	}
	public boolean isDangKhyNhanBangTin() {
		return dangKhyNhanBangTin;
	}
	public void setDangKhyNhanBangTin(boolean dangKhyNhanBangTin) {
		this.dangKhyNhanBangTin = dangKhyNhanBangTin;
	}
	public String getMaXacThuc() {
		return maXacThuc;
	}
	public void setMaXacThuc(String maXacThuc) {
		this.maXacThuc = maXacThuc;
	}
	public Date getThoiGianHieuLucCuaMaXacThuc() {
		return thoiGianHieuLucCuaMaXacThuc;
	}
	public void setThoiGianHieuLucCuaMaXacThuc(Date thoiGianHieuLucCuaMaXacThuc) {
		this.thoiGianHieuLucCuaMaXacThuc = thoiGianHieuLucCuaMaXacThuc;
	}
	public boolean isTrangThaiXacThuc() {
		return trangThaiXacThuc;
	}
	public void setTrangThaiXacThuc(boolean trangThaiXacThuc) {
		this.trangThaiXacThuc = trangThaiXacThuc;
	}
	public String getDuongDanAnh() {
		return duongDanAnh;
	}
	public void setDuongDanAnh(String duongDanAnh) {
		this.duongDanAnh = duongDanAnh;
	}
	@Override
	public String toString() {
		return "KhachHang [idKhachHang=" + idKhachHang + ", tenDangNhap=" + tenDangNhap + ", matKhau=" + matKhau
				+ ", gioiTinh=" + gioiTinh + ", hoVaTen=" + hoVaTen + ", diaChi=" + diaChi + ", ngaySinh=" + ngaySinh + ", SDT=" + SDT
				+ ", diaChiEmail=" + diaChiEmail + ", dangKhyNhanBangTin=" + dangKhyNhanBangTin + ", maXacThuc="
				+ maXacThuc + ", thoiGianHieuLucCuaMaXacThuc=" + thoiGianHieuLucCuaMaXacThuc + ", trangThaiXacThuc="
				+ trangThaiXacThuc + ", duongDanAnh=" + duongDanAnh + "]";
	}
	
	
}
