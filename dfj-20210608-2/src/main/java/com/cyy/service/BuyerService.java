package com.cyy.service;

import com.cyy.javabean.Buyer;

public interface BuyerService {
	public int buyerRegSave(Buyer byr);
	public Buyer loginCheck(Buyer byr);
	public int buyerChange(Buyer byr);
}
