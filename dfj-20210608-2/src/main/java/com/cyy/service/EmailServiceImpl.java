package com.cyy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyy.dao.AccountMapper;
import com.cyy.dao.EmailMapper;
import com.cyy.javabean.Buyer;
@Service("emailService")
public class EmailServiceImpl implements EmailService{
	@Autowired
	private EmailMapper emailMapper;
	@Override
	public Buyer emailfind(String email) {
		// TODO Auto-generated method stub
		return emailMapper.emailfind(email);
	}

}
