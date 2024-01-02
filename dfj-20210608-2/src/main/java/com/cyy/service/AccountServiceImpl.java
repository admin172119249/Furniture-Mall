package com.cyy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyy.dao.AccountMapper;
import com.cyy.javabean.Account;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;

@Service("accountService")
public class AccountServiceImpl implements AccountService {
	@Autowired
	private AccountMapper accountMapper;

	@Override
	public Account queryCrtSum(int byrId) {
		return accountMapper.queryCrtSum(byrId);
	}

	@Override
	public void accountAddSave(Account acc) {
		accountMapper.accountAddSave(acc);
	}
	
}
