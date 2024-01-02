package com.cyy.dao;

import java.util.List;

import com.cyy.javabean.Cart;
import com.cyy.javabean.SearchCondition;

public interface CartMapper {
	public int cartSave(Cart cart);
	List<Cart> queryCart(SearchCondition sc);
	int queryCartRecordCnt(SearchCondition sc);
	public int cartDelete(Cart cart);
}