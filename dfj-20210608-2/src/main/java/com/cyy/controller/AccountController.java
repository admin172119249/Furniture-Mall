package com.cyy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyy.javabean.Account;
import com.cyy.javabean.Buyer;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;
import com.cyy.service.AccountService;

@Controller
public class AccountController {
	@Autowired
	private AccountService accountService;
	

	// 准备结算数据
	@RequestMapping("/accountAdd.do")
	public String accountAdd(Model model, HttpSession session) {
		Buyer loginByr = (Buyer) session.getAttribute("loginByr");
		Account add = accountService.queryCrtSum(loginByr.getUserId());
		add.setAddAddr(loginByr.getUseradd());
		model.addAttribute("add", add);
		
		return "checkout-3";
	}

	@RequestMapping("/accountAddSave.do")
	public String accountAddSave(Account add, Model model, HttpSession session) {
		Buyer loginByr = (Buyer) session.getAttribute("loginByr");
		add.setAddUserId(loginByr.getUserId());
		accountService.accountAddSave(add);
		/**
		 * crt_cart->汇总->acc_account crt_cart->明细->acg_account_goods
		 * crt_cart->删除
		 */
		return "payindex";
	}
	
	
}