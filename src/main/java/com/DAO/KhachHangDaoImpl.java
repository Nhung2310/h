package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.KhachHang;

public class KhachHangDaoImpl implements KhachHangDao {
  
	private Connection conn;

	public KhachHangDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean khachHangDangKy(KhachHang kh) {
		boolean f=false;
		
		try {
			String sql="insert into khach_hang (tendangnhap,matkhau,hovaten,gioitinh,diachi,ngaysinh,sodienthoai,dangkynhanbangtin,email) values (?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
 
			ps.setString(1,kh.getTenDangNhap());
			ps.setString(2,kh.getMatKhau());
			ps.setString(3,kh.getHoVaTen());
			ps.setString(4,kh.getGioiTinh());
			
			ps.setString(5,kh.getDiaChi());
			
			
			ps.setDate(6, kh.getNgaySinh());
			
			
			ps.setString(7,kh.getSDT());
			ps.setBoolean(8, kh.isDangKhyNhanBangTin());
			ps.setString(9,kh.getDiaChiEmail());
			
			int i= ps.executeUpdate();
			
			if(i == 1) {
				f=true;
			} 
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public KhachHang dangnhap(String tendangnhap, String matkhau) {
		KhachHang kh=null;
		
		try {
			
	String sql="select * from khach_hang where tendangnhap=? and matkhau=?";
		
	
	PreparedStatement ps=conn.prepareStatement(sql);
	ps.setString(1, tendangnhap);  
	ps.setString(2, matkhau);
	
	ResultSet rs=ps.executeQuery();
	while (rs.next()) 
	{
		kh=new KhachHang();
		kh.setIdKhachHang(rs.getInt(1));
		kh.setTenDangNhap(rs.getString(2));
		kh.setMatKhau(rs.getString(3));
		kh.setHoVaTen(rs.getString(4));
		kh.setGioiTinh(rs.getString(5));
		
		kh.setDiaChi(rs.getString(6));
		
		
		kh.setNgaySinh(rs.getDate(7));
		kh.setSDT(rs.getString(8));
		
		kh.setDangKhyNhanBangTin(rs.getBoolean(9));
		kh.setDiaChiEmail(rs.getString(10));
		
		
	}
	
	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return kh;
		
	}

	@Override
	public boolean checkPasword(int id,String pass) {
		boolean f=false;
		
		try {
			
			String sql="select * from  khach_hang where idkhach_hang=? and matkhau=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			
			pst.setInt(1, id);
			pst.setString(2, pass);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

	@Override
	public boolean updateProfile(KhachHang kh) {
boolean f=false;
		
		try {
			String sql="update  khach_hang set hovaten=?,diachi=?,sodienthoai=?,email=? where idkhach_hang=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
 
		
			ps.setString(1,kh.getHoVaTen());
			
			
			ps.setString(2,kh.getDiaChi());
			
			ps.setString(3,kh.getSDT());
		
			ps.setString(4,kh.getDiaChiEmail());
			
			ps.setInt(5, kh.getIdKhachHang());
			
			int i= ps.executeUpdate();
			
			if(i == 1) {
				f=true;
			} 
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
//kiểm tra xem email đó đã đăng ký chưa nếu rồi thì k cho đăng ký nữa
	@Override
	public boolean checkKH(String email) {
		boolean f=true;
		try {
     String sql="select * from  khach_hang where email=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
 
		
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
			
				f=false;
				
			}
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	
	
}
