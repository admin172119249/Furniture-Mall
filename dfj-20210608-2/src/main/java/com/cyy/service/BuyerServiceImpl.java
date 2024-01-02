package com.cyy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyy.dao.BuyerMapper;
import com.cyy.javabean.Buyer;

@Service("buyerServiceI")
public class BuyerServiceImpl implements BuyerService {
	@Autowired
	private BuyerMapper buyerMapper;

	@Override
	public int buyerRegSave(Buyer byr) {
		return buyerMapper.buyerRegSave(byr);
	}

	@Override
	public Buyer loginCheck(Buyer byr) {
		return buyerMapper.loginCheck(byr);
	}

	@Override
	public int buyerChange(Buyer byr) {
		return buyerMapper.buyerChange(byr);
	}
}