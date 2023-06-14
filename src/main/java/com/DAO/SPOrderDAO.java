package com.DAO;

import java.util.List;

import com.entity.San_Pham_Order;

public interface SPOrderDAO {

//	public int getOrderNo();
	
	public boolean saveOrder(List<San_Pham_Order> slist);
	
	public List<San_Pham_Order> getSP(String email);
	
	public List<San_Pham_Order> getALLSPOrder();// lấy cho admin

	
	
}
