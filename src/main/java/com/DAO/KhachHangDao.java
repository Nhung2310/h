package com.DAO;

import com.entity.KhachHang;

public interface KhachHangDao  {
	public boolean khachHangDangKy(KhachHang kh);
	
	
	public KhachHang dangnhap(String tendangnhap, String matkhau); 
		
	public boolean checkPasword(int id,String pass);
	
	public boolean updateProfile(KhachHang kh);
	
	public boolean checkKH(String email);
	
}
