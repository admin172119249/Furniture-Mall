package com.cyy.service;

import java.util.List;

import com.cyy.javabean.Account;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;

public interface AccountService {
	public Account queryCrtSum(int byrId);

	public void accountAddSave(Account acc);

	
}
