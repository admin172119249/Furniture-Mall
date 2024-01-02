package com.cyy.dao;

import com.cyy.javabean.Buyer;

public interface BuyerMapper {
	public int buyerRegSave(Buyer byr);
	public Buyer loginCheck(Buyer byr);
	
	
	public int buyerChange(Buyer byr);
}
