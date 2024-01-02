package com.cyy.service;

import java.util.List;

import com.cyy.javabean.Cart;
import com.cyy.javabean.SearchCondition;

public interface CartService {
	public int cartSave(Cart crt);
	public List<Cart> queryCart(SearchCondition sc);
	public int cartDelete(Cart crt);
}