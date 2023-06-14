package com.DAO;

import java.util.List;

import com.entity.GioHang;
;

public interface GioHangDAO {

	public boolean themGioHang(GioHang g);
	
	
	public List<GioHang> getSPKhachHang(int idkhachhang);
	
	public boolean xoaSP(int spid, int khid,int ghid);
}
