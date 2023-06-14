package com.DAO;


import java.util.List;

import com.entity.SanPham;

public interface SPDAO {

	public boolean  themSP(SanPham b);

	public List<SanPham> getAllSP();
	
	public SanPham getSPByID(int id);
	
	public boolean editcapnhatSP(SanPham s);
	
	public boolean deleteSp(int id);
	
	public List<SanPham> getNewSP();
	
	public List<SanPham> getYeuThichNhat();
	
	public List<SanPham> getAllNew();
	
	public List<SanPham> getNuocHoaNam();
	
	public List<SanPham> getNuocHoaNu();
	
	
	public List<SanPham> getALLYeuThichNhat();
	public List<SanPham> getAllKhuyenMai();
	
	public List<SanPham> getAllNuocHoaNam();
	
	public List<SanPham> getAllNuocHoaNu();
	
	public List<SanPham> getAllPass();
	
	public List<SanPham> getAllBURBERRY();
	
	public List<SanPham> getAllGUCCI();
	
	public List<SanPham> getAllDIOR();
	
	public List<SanPham> getCHANEL();
	
	
	public List<SanPham> getSPByPass(String email, String loai );
	
	public boolean passSpDelete(String email, String loai,int id);
	
	public List<SanPham> getSPBYSearch(String ch);
	
	public List<SanPham> getLocSP(String loai, String dungTich, String thuongHieu, String donGia);
}
