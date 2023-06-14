package com.entity;

import java.sql.Date;

public class SanPham {

	private int idNuoc_Hoa;
	private String tenNuocHoa;
	
	private String tenthuongHieu;
	private Date namSanXuat;
	
	private double dungTich;
	private double giaGoc;
	private double giaBan;
	
	private double soLuong;
	private String loaiNuocHoa;
	private String trangThai;
	
	private String xuatXu;
	private String moTa;
	private String photo;
	private String email;
	
	
	
	public SanPham() {
		
	}

	public SanPham( String tenNuocHoa, String tenThuongHieu, Date namSanXuat, double dungTich,
			double giaGoc, double giaBan, double soLuong, String loaiNuocHoa, String trangThai, String xuatXu,
			String moTa, String photo, String email) {
		
		
		this.tenNuocHoa = tenNuocHoa;
		this.tenthuongHieu = tenThuongHieu;
		this.namSanXuat = namSanXuat;
		this.dungTich = dungTich;
		this.giaGoc = giaGoc;
		this.giaBan = giaBan;
		this.soLuong = soLuong;
		this.loaiNuocHoa = loaiNuocHoa;
		this.trangThai = trangThai;
		this.xuatXu = xuatXu;
		this.moTa = moTa;
		this.photo = photo;
		this.email = email;
	}

	public int getIdNuoc_Hoa() {
		return idNuoc_Hoa;
	}

	

	public void setIdNuoc_Hoa(int idNuoc_Hoa) {
		this.idNuoc_Hoa = idNuoc_Hoa;
	}

	public String getTenNuocHoa() {
		return tenNuocHoa;
	}
	public void setTenNuocHoa(String tenNuocHoa) {
		this.tenNuocHoa = tenNuocHoa;
	}

	public String getTenthuongHieu() {
		return tenthuongHieu;
	}

	public void setTenthuongHieu(String tenthuongHieu) {
		this.tenthuongHieu = tenthuongHieu;
	}

	public Date getNamSanXuat() {
		return namSanXuat;
	}

	public void setNamSanXuat(Date namSanXuat) {
		this.namSanXuat = namSanXuat;
	}

	public double getDungTich() {
		return dungTich;
	}

	public void setDungTich(double dungTich) {
		this.dungTich = dungTich;
	}

	public double getGiaGoc() {
		return giaGoc;
	}

	public void setGiaGoc(double giaGoc) {
		this.giaGoc = giaGoc;
	}

	public double getGiaBan() {
		return giaBan;
	}

	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}

	public double getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(double soLuong) {
		this.soLuong = soLuong;
	}

	public String getLoaiNuocHoa() {
		return loaiNuocHoa;
	}

	public void setLoaiNuocHoa(String loaiNuocHoa) {
		this.loaiNuocHoa = loaiNuocHoa;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public String getXuatXu() {
		return xuatXu;
	}

	public void setXuatXu(String xuatXu) {
		this.xuatXu = xuatXu;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "NuocHoa [tenNuocHoa=" + tenNuocHoa + ", tenthuongHieu=" + tenthuongHieu + ", namSanXuat=" + namSanXuat
				+ ", giaNhap=" + dungTich + ", giaGoc=" + giaGoc + ", giaBan=" + giaBan + ", soLuong=" + soLuong
				+ ", loaiNuocHoa=" + loaiNuocHoa + ", trangThai=" + trangThai + ", xuatXu=" + xuatXu + ", moTa=" + moTa
				+ ", photo=" + photo + ", email=" + email + "]";
	}

	
	
	
}
