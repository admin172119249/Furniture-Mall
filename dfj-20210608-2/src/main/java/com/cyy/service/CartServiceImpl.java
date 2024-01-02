package com.cyy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyy.dao.CartMapper;
import com.cyy.javabean.Cart;
import com.cyy.javabean.SearchCondition;

@Service("cartService")
public class CartServiceImpl implements CartService {
	@Autowired
	private CartMapper cartMapper;

	@Override
	public int cartSave(Cart crt) {
		return cartMapper.cartSave(crt);
	}
	
	@Override
	public int cartDelete(Cart crt) {
		return cartMapper.cartSave(crt);
	}
	
	@Override
	public List<Cart> queryCart(SearchCondition sc) {
		if (sc.getCondition() == null)
			sc.setCondition("");
		if (sc.getPageNow() == 0)
			sc.setPageNow(1);
		String condition = sc.getCondition();
		sc.setCondition("%" + condition + "%");
		sc.setBeginRow((sc.getPageNow() - 1) * sc.getPageSize());
		int recordCnt = cartMapper.queryCartRecordCnt(sc);
		if (recordCnt % sc.getPageSize() == 0)
			sc.setPageCnt(recordCnt / sc.getPageSize());
		else
			sc.setPageCnt(recordCnt / sc.getPageSize() + 1);
		List<Cart> list = cartMapper.queryCart(sc);
		sc.setCondition(condition);
		return list;
	}
}
