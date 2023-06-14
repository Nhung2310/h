package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.GioHang;

public class GioHangDAOImpl implements GioHangDAO{

	private Connection conn;
	
	public GioHangDAOImpl( Connection conn) {
		
		this.conn=conn;
	}
	


	@Override
	public boolean themGioHang(GioHang g) {
		
    boolean f=false;
		
		try {
			
			String sql="insert into gio_hang (idsan_pham,idkhachhang,tenNuocHoa,tenThuongHieu,gia,tong_tien) values(?,?,?,?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1, g.getIdsan_pham());
			ps.setInt(2, g.getIdkhachhang());
			ps.setString(3, g.getTenNuocHoa());
			ps.setString(4, g.getTenThuongHieu());
			ps.setDouble(5, g.getGia());
			ps.setDouble(6, g.getTong_tien());
			
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
	public List<GioHang> getSPKhachHang(int idkhachhang) {
 
		List<GioHang> list=new  ArrayList<GioHang>();
		GioHang g=null;
  double tongTien=0;
		try {
			
			String sql="select *from gio_hang where idkhachhang=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, idkhachhang);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				g=new GioHang();
				
				g.setIdgio_hang(rs.getInt(1));
				g.setIdsan_pham(rs.getInt(2));
				g.setIdkhachhang(rs.getInt(3));
				g.setTenNuocHoa(rs.getString(4));
				g.setTenThuongHieu(rs.getString(5));
				g.setGia(rs.getDouble(6));
				
				tongTien=tongTien+rs.getDouble(7);
				g.setTong_tien(tongTien);
				
				list.add(g);
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override
	public boolean xoaSP(int spid,int khid,int ghid) {
		
		boolean f=false;
		
		try {
			
			String sql="delete from gio_hang where idsan_pham=? and idkhachhang=? and idgio_hang=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1,spid);
			ps.setInt(2,khid);
			ps.setInt(3,ghid);
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
		
	}

	
	
}
