package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.entity.San_Pham_Order;

public class SPOrderImpl implements SPOrderDAO {

	
	private Connection conn;
	
	public SPOrderImpl(Connection conn) {
		super();
		this.conn=conn;
	}

//	@Override
//	public int getOrderNo() {
// 
//		int i=1;
//		try {
//			
//			String sql="select * from sp_order";
//			
//			PreparedStatement ps=conn.prepareStatement(sql);
//			ResultSet rs=ps.executeQuery();
//			
//			while(rs.next()) {
//				i++;
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		
//		return i;
//	}

	@Override
	public boolean saveOrder(List<San_Pham_Order> slist) {

		boolean f=false;

		try {
			
			String sql="insert into sp_order(order_id,kh_name,email,diachi,sdt,sp_ten,thuong_hieu,gia,phuong_thuc_thanh_toan,ngay_dat_hang) values(?,?,?,?,?,?,?,?,?,?)";
			
			conn.setAutoCommit(false);
			
			PreparedStatement ps=conn.prepareStatement(sql);
			
			for(San_Pham_Order s:slist) {
				
				ps.setString(1, s.getOrderId());
				ps.setString(2, s.getTenKhachHang());
				ps.setString(3, s.getEmail());
				ps.setString(4, s.getFulladd());
				ps.setString(5, s.getSdt());
				ps.setString(6, s.getTenSP());
				ps.setString(7, s.getThuongHieu());
				ps.setString(8, s.getGia());
				ps.setString(9, s.getHinhThucThanhToan());
				ps.setDate(10, s.getNgayDatHang());
				ps.addBatch();
				
			}
			
			int [] count=ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	@Override
	public List<San_Pham_Order> getSP(String email) {
		List<San_Pham_Order> list=new ArrayList<San_Pham_Order>();
	San_Pham_Order o=null;
	
	try {
		
		String sql="select* from sp_order where email=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			
			o=new San_Pham_Order();
			
			o.setId(rs.getInt(1));
			o.setOrderId(rs.getString(2));
			o.setTenKhachHang(rs.getString(3));
			o.setEmail(rs.getString(4));
			o.setFulladd(rs.getString(5));
			o.setSdt(rs.getString(6));
			o.setTenSP(rs.getString(7));
			o.setThuongHieu(rs.getString(8));
			o.setGia(rs.getString(9));
		o.setHinhThucThanhToan(rs.getString(10));
			o.setNgayDatHang(rs.getDate(11));
			list.add(o);
			
		}
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		
		return list;
	}

	@Override
	public List<San_Pham_Order> getALLSPOrder() {
		List<San_Pham_Order> list=new ArrayList<San_Pham_Order>();
		San_Pham_Order o=null;
		
		try {
			
			String sql="select* from sp_order ";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				o=new San_Pham_Order();
				
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setTenKhachHang(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setSdt(rs.getString(6));
				o.setTenSP(rs.getString(7));
				o.setThuongHieu(rs.getString(8));
				o.setGia(rs.getString(9));
				o.setHinhThucThanhToan(rs.getString(10));
				o.setNgayDatHang(rs.getDate(11));
				list.add(o);
				
				
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
			
			return list;
	}

	
}
