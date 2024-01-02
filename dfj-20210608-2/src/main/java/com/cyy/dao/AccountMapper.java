package com.cyy.dao;

import java.util.List;

import com.cyy.javabean.Account;
import com.cyy.javabean.SearchCondition;

public interface AccountMapper {
	public Account queryCrtSum(int byrId);

	public void accountAddSave(Account acc);

	
}
