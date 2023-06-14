package com.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;


import com.entity.SanPham;


public class SPDAOImpl  implements SPDAO{

	private Connection conn;
	
	
	
	public SPDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}



	@Override
	public boolean themSP(SanPham b) {
     boolean f=false;
    try {
		String sql="insert into nuoc_hoa(tennuochoa,tenthuonghieu,namsanxuat,giagoc,giaban,dungtich,loai,trangthai,photo,xuatxu,soluong,mota,email) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		 
		ps.setString(1,b.getTenNuocHoa());
		ps.setString(2,b.getTenthuongHieu());
		ps.setDate(3,b.getNamSanXuat());
		ps.setDouble(4,b.getGiaGoc());
		
		
		ps.setDouble(5,b.getGiaBan());
		ps.setDouble(6, b.getDungTich());
		
		ps.setString(7,b.getLoaiNuocHoa());
		ps.setString(8,b.getTrangThai());
		ps.setString(9,b.getPhoto());
		ps.setString(10,b.getXuatXu());
		ps.setDouble(11,b.getSoLuong());
		ps.setString(12,b.getMoTa());
		ps.setString(13,b.getEmail());
		
		int i=ps.executeUpdate();
		if(i==1) {
			
			f=true;
		}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		return f;
	}


//tất cả các sản phầm
	@Override
	public List<SanPham> getAllSP() {

		List<SanPham> list=new ArrayList<SanPham>();
		SanPham s=null;
		
   try {
	
	   String sql="select * from nuoc_hoa ";
	   PreparedStatement ps=conn.prepareStatement(sql);
	   
	   ResultSet rs=ps.executeQuery();
	   
	   while (rs.next()){
		   
		   s=new SanPham();
		   s.setIdNuoc_Hoa(rs.getInt(1));
		   s.setTenNuocHoa(rs.getString(2));
		   s.setTenthuongHieu(rs.getString(3));
		   s.setNamSanXuat(rs.getDate(4));
		   s.setGiaGoc(rs.getDouble(5));
		  
		   s.setGiaBan(rs.getDouble(6));
		   s.setDungTich(rs.getDouble(7));
		   
		   s.setLoaiNuocHoa(rs.getString(8));
		   s.setTrangThai(rs.getString(9));
		   s.setPhoto(rs.getString(10));
		   s.setXuatXu(rs.getString(11));
		   s.setSoLuong(rs.getDouble(12));
		   s.setMoTa(rs.getString(13));
		   s.setEmail(rs.getString(14));
		  
		   list.add(s);
		   
	   }
	   
	   
    } catch (Exception e) {
	
e.printStackTrace();

        }
		
		
		return list;
	}


// lấy sản phẩm bằng id để chỉnh sửa thông tin sản phẩm
	@Override
	public SanPham getSPByID(int id) {

      SanPham s=null;
      try {
		String sql="select * from nuoc_hoa where idnuoc_hoa=? ";
		
    	PreparedStatement ps=conn.prepareStatement(sql);
    	
    	ps.setInt(1, id);
    	
    	ResultSet rs=ps.executeQuery();
    	while(rs.next()) {
    		
    		s=new SanPham();
    		
    	   s.setIdNuoc_Hoa(rs.getInt(1));
  		   s.setTenNuocHoa(rs.getString(2));
  		   s.setTenthuongHieu(rs.getString(3));
  		   s.setNamSanXuat(rs.getDate(4));
  		 s.setGiaGoc(rs.getDouble(5));
		   s.setGiaBan(rs.getDouble(6));
		   s.setDungTich(rs.getDouble(7));
  		   s.setLoaiNuocHoa(rs.getString(8));
  		   s.setTrangThai(rs.getString(9));
  		   s.setPhoto(rs.getString(10));
  		   s.setXuatXu(rs.getString(11));
  		   s.setSoLuong(rs.getDouble(12));
  		   s.setMoTa(rs.getString(13));
  		   s.setEmail(rs.getString(14));
    		
    	}
    	
    	
		
	} catch (Exception  e) {
		e.printStackTrace();
	}
		
		return s;
	}



	@Override
	public boolean editcapnhatSP(SanPham s) {
		boolean f=false;
		
		try {
			String sql="update nuoc_hoa set tennuochoa=?,tenthuonghieu=?,giagoc=?,giaban=?,dungtich=?,trangthai=? where idnuoc_hoa=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, s.getTenNuocHoa());
			ps.setString(2, s.getTenthuongHieu());
			ps.setDouble(3, s.getGiaGoc());
			ps.setDouble(4, s.getGiaBan());
			ps.setDouble(5, s.getDungTich());
			ps.setString(6, s.getTrangThai());
			ps.setInt(7, s.getIdNuoc_Hoa());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}



	@Override
	public boolean deleteSp(int id) {
		boolean f=false;
		try {
			
			String sql="delete from nuoc_hoa where idnuoc_hoa=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}


// sản phẩm theo loại
	@Override
	public List<SanPham> getNewSP() {
	
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "moi");
					
			ResultSet rs=ps.executeQuery();
			
			int i=1;
			while( rs.next() && i <=3) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		   s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   i++;
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	
	public List<SanPham> getYeuThichNhat() {
		
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "yeuthicnhat");
					
			ResultSet rs=ps.executeQuery();
			
			int i=1;
			while( rs.next() && i <=3) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   i++;
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	
	@Override
	public List<SanPham> getNuocHoaNam() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {
			String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "nuochoanam");
		
					
			ResultSet rs=ps.executeQuery();
			
			int i=1;
			while( rs.next() && i <=3) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   i++;
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getNuocHoaNu() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {
			String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "nuochoanu");
		
					
			ResultSet rs=ps.executeQuery();
			
			int i=1;
			while( rs.next() && i <=3) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   i++;
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getAllPass() {
	
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "pass");
					
			ResultSet rs=ps.executeQuery();
			
			int i=1;
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   i++;
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getAllNew() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "moi");
					
			ResultSet rs=ps.executeQuery();
			
		
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getALLYeuThichNhat() {

		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "yeuthicnhat");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		  
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getAllKhuyenMai() {
		
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where trangthai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, " active");
					
			ResultSet rs=ps.executeQuery();
			
		
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}


	

	@Override
	public List<SanPham> getAllNuocHoaNam() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "nuochoanam");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next()) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		 
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public List<SanPham> getAllNuocHoaNu() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where loai=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "nuochoanu");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		  
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public List<SanPham> getSPByPass(String email, String loai) {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham s=null;
		
		try {
			
			String sql="select * from nuoc_hoa where loai=? and email=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,loai);
			ps.setString(2,email);
			
			ResultSet rs=ps.executeQuery();
			

			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		   
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public boolean passSpDelete(String email, String loai,int id) {
		boolean f=false;
		try {
			String sql="delete from nuoc_hoa where loai=? and email=? and idnuoc_hoa=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,loai);
			ps.setString(2,email);
			ps.setInt(3,id);
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}



	/*
	 * @Override public List<SanPham> getSPBYSearch(String ch) { List<SanPham>
	 * list=new ArrayList<SanPham>(); SanPham s = null; try { String
	 * sql="select * from nuoc_hoa where tennuochoa like ? or tenthuonghieu like ? or loai like? or dungtich like=?"
	 * ;
	 * 
	 * PreparedStatement ps=conn.prepareStatement(sql); ps.setString(1,"%"+ch+"%");
	 * ps.setString(2,"%"+ch+"%"); ps.setString(3,"%"+ch+"%");
	 * ps.setString(4,"%"+ch+"%");
	 * 
	 * ResultSet rs=ps.executeQuery();
	 * 
	 * int i=1; while( rs.next() && i <=3) {
	 * 
	 * s=new SanPham();
	 * 
	 * s.setIdNuoc_Hoa(rs.getInt(1)); s.setTenNuocHoa(rs.getString(2));
	 * s.setTenthuongHieu(rs.getString(3)); s.setNamSanXuat(rs.getDate(4));
	 * s.setGiaGoc(rs.getDouble(5));
	 * 
	 * s.setGiaBan(rs.getDouble(6)); s.setDungTich(rs.getDouble(7));
	 * s.setLoaiNuocHoa(rs.getString(8)); s.setTrangThai(rs.getString(9));
	 * s.setPhoto(rs.getString(10)); s.setXuatXu(rs.getString(11));
	 * s.setSoLuong(rs.getDouble(12)); s.setMoTa(rs.getString(13));
	 * s.setEmail(rs.getString(14)); list.add(s); i++;
	 * 
	 * }
	 * 
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return list; }
	 */
	
	
	@Override public List<SanPham> getSPBYSearch(String ch) { List<SanPham> list
	  = new ArrayList<>(); SanPham s = null; try { String sql =
	  "SELECT * FROM nuoc_hoa WHERE tennuochoa LIKE ? OR tenthuonghieu LIKE ? OR loai LIKE ? OR dungtich LIKE ?"
	  ; PreparedStatement ps = conn.prepareStatement(sql); 
	  String searchPattern ="%" + ch + "%"; 
	  // Thêm dấu % vào chuỗi tìm kiếm 
	  ps.setString(1,searchPattern);
	  ps.setString(2, searchPattern);
	  ps.setString(3, searchPattern); 
	  ps.setString(4, searchPattern); 
	  ResultSet rs = ps.executeQuery();
	  int i = 1; while (rs.next() && i <= 10) 
	  { s = new SanPham(); 
	  s.setIdNuoc_Hoa(rs.getInt(1)); 
	  s.setTenNuocHoa(rs.getString(2));
	  s.setTenthuongHieu(rs.getString(3));
	  s.setNamSanXuat(rs.getDate(4));
	  s.setGiaGoc(rs.getDouble(5));
	  s.setGiaBan(rs.getDouble(6));
	  s.setDungTich(rs.getDouble(7));
	  s.setLoaiNuocHoa(rs.getString(8));
	  s.setTrangThai(rs.getString(9));
	  s.setPhoto(rs.getString(10));
	  s.setXuatXu(rs.getString(11));
	  s.setSoLuong(rs.getDouble(12));
	  s.setMoTa(rs.getString(13));
	  s.setEmail(rs.getString(14));
	  list.add(s); i++;
	  } } 
	  catch (Exception e) { 
		  e.printStackTrace(); 
		  } 
	  return list;
	  }
	 
	


	@Override
	public List<SanPham> getAllBURBERRY() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where tenthuonghieu=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Burberry");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		 
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public List<SanPham> getAllGUCCI() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where tenthuonghieu=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Gucci");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  	
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public List<SanPham> getAllDIOR() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where tenthuonghieu=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Dior");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		
		  		    
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



	@Override
	public List<SanPham> getCHANEL() {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		try {			   
		String sql="select * from nuoc_hoa where tenthuonghieu=?  ORDER BY idnuoc_hoa DESC"; 
		
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Chanel");
					
			ResultSet rs=ps.executeQuery();
			
			
			while( rs.next() ) {
				  
				   s=new SanPham();
				   
				   s.setIdNuoc_Hoa(rs.getInt(1));
		  		   s.setTenNuocHoa(rs.getString(2));
		  		   s.setTenthuongHieu(rs.getString(3));
		  		   s.setNamSanXuat(rs.getDate(4));
		  		 s.setGiaGoc(rs.getDouble(5));
		  		   
		  		   s.setGiaBan(rs.getDouble(6));
		  		   s.setDungTich(rs.getDouble(7));
		  		   s.setLoaiNuocHoa(rs.getString(8));
		  		   s.setTrangThai(rs.getString(9));
		  		   s.setPhoto(rs.getString(10));
		  		   s.setXuatXu(rs.getString(11));
		  		   s.setSoLuong(rs.getDouble(12));
		  		   s.setMoTa(rs.getString(13));
		  		   s.setEmail(rs.getString(14));
		  		   list.add(s);
		  		  
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	@Override
	public List<SanPham> getLocSP(String loai, String dungTich, String thuongHieu, String donGia) {
		List<SanPham> list=new ArrayList<SanPham>();
		SanPham  s = null;		
		double dt = 0;
		
		if (loai.equals("Yêu thích nhất"))
			loai = "yeuthicnhat";
		else if (loai.equals("Mới nhất"))
			loai = "moi";
		else if (loai.equals("Pass lại"))
			loai = "pass";
		else if (loai.equals("Nước hoa nam"))
			loai = "nuochoanam";
		else if (loai.equals("Nước hoa nữ"))
			loai = "nuochoanu";
		
		if (dungTich.equals("30 ml"))
			dt = 30;
		else if (dungTich.equals("50 ml"))
			dt = 50;
		else if (dungTich.equals("150 ml"))
			dt = 150;
		
		if (thuongHieu.equals("Chanel"))
			thuongHieu = "Chanel";
		else if (thuongHieu.equals("Dior"))
			thuongHieu = "Dior";
		else if (thuongHieu.equals("Burberry"))
			thuongHieu = "Burberry";
		else if (thuongHieu.equals("Gucci"))
			thuongHieu = "Gucci";
		
		try {
			if (donGia.equals("Dưới 1 triệu")) {
				String sql="select * from nuoc_hoa where loai=? and dungtich=? and tenthuonghieu=? and giaban < 1000000 ORDER BY idnuoc_hoa DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,loai);
				ps.setDouble(2,dt);
				ps.setString(3,thuongHieu);
				ResultSet rs=ps.executeQuery();
				while( rs.next() ) {
					   s=new SanPham();
					   s.setIdNuoc_Hoa(rs.getInt(1));
			  		   s.setTenNuocHoa(rs.getString(2));
			  		   s.setTenthuongHieu(rs.getString(3));
			  		   s.setNamSanXuat(rs.getDate(4));
			  		   s.setDungTich(rs.getDouble(5));
			  		   s.setGiaGoc(rs.getDouble(6));
			  		   s.setGiaBan(rs.getDouble(7));
			  		   s.setLoaiNuocHoa(rs.getString(8));
			  		   s.setTrangThai(rs.getString(9));
			  		   s.setPhoto(rs.getString(10));
			  		   s.setXuatXu(rs.getString(11));
			  		   s.setSoLuong(rs.getDouble(12));
			  		   s.setMoTa(rs.getString(13));
			  		   s.setEmail(rs.getString(14));
			  		   list.add(s);
				}
			}
			else if (donGia.equals("Từ 1 đến 3 triệu")) {
				String sql="select * from nuoc_hoa where loai=? and dungtich=? and tenthuonghieu=? and giaban >= 1000000 and giaban <= 3000000 ORDER BY idnuoc_hoa DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,loai);
				ps.setDouble(2,dt);
				ps.setString(3,thuongHieu);
				ResultSet rs=ps.executeQuery();
				while( rs.next() ) {
					   s=new SanPham();
					   s.setIdNuoc_Hoa(rs.getInt(1));
			  		   s.setTenNuocHoa(rs.getString(2));
			  		   s.setTenthuongHieu(rs.getString(3));
			  		   s.setNamSanXuat(rs.getDate(4));
			  		   s.setDungTich(rs.getDouble(5));
			  		   s.setGiaGoc(rs.getDouble(6));
			  		   s.setGiaBan(rs.getDouble(7));
			  		   s.setLoaiNuocHoa(rs.getString(8));
			  		   s.setTrangThai(rs.getString(9));
			  		   s.setPhoto(rs.getString(10));
			  		   s.setXuatXu(rs.getString(11));
			  		   s.setSoLuong(rs.getDouble(12));
			  		   s.setMoTa(rs.getString(13));
			  		   s.setEmail(rs.getString(14));
			  		   list.add(s);
				}
			}
			else if (donGia.equals("Trên 3 triệu")){
				String sql="select * from nuoc_hoa where loai=? and dungtich=? and tenthuonghieu=? and giaban > 3000000 ORDER BY idnuoc_hoa DESC";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,loai);
				ps.setDouble(2,dt);
				ps.setString(3,thuongHieu);
				ResultSet rs=ps.executeQuery();
				while( rs.next() ) {
					   s=new SanPham();
					   s.setIdNuoc_Hoa(rs.getInt(1));
			  		   s.setTenNuocHoa(rs.getString(2));
			  		   s.setTenthuongHieu(rs.getString(3));
			  		   s.setNamSanXuat(rs.getDate(4));
			  		   s.setDungTich(rs.getDouble(5));
			  		   s.setGiaGoc(rs.getDouble(6));
			  		   s.setGiaBan(rs.getDouble(7));
			  		   s.setLoaiNuocHoa(rs.getString(8));
			  		   s.setTrangThai(rs.getString(9));
			  		   s.setPhoto(rs.getString(10));
			  		   s.setXuatXu(rs.getString(11));
			  		   s.setSoLuong(rs.getDouble(12));
			  		   s.setMoTa(rs.getString(13));
			  		   s.setEmail(rs.getString(14));
			  		   list.add(s);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}
