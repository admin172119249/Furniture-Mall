package com.cyy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyy.javabean.Buyer;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;
import com.cyy.service.GoodsService;

@Controller
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	private int pageSize = 3;

	@RequestMapping("/queryGoods.do")
	public String queryGoods(String condition, Integer pageNow, Model model,
			HttpSession session) {
		SearchCondition sc = new SearchCondition(condition, pageNow, pageSize);
		List<Goods> listShop = goodsService.queryGoods(sc);
		model.addAttribute("listShop", listShop);
		session.setAttribute("sc", sc);
		return "products-grid";
	}

	@RequestMapping("/goodsDetail.do")
	public String queryGoods(Integer shopId, Integer pageNow, Model model,
			HttpSession session) {
		Goods shop = goodsService.queryGoodsById(shopId);
		System.out.println("shop:" + shop);
		model.addAttribute("shop", shop);
		session.setAttribute("pageNow", pageNow);
		return "product";
	}
	
	@RequestMapping("/goodsDetail1.do")
	public String queryGoods1(Integer shopId, Integer pageNow, Model model,
			HttpSession session) {
		Goods shop = goodsService.queryGoodsById(shopId);
		System.out.println("shop:" + shop);
		model.addAttribute("shop", shop);
		session.setAttribute("pageNow", pageNow);
		return "changeproduct";
	}
	@RequestMapping("/goodsDetail2.do")
	public String queryGoods2(Integer shopId, Integer pageNow, Model model,
			HttpSession session) {
		Goods shop = goodsService.queryGoodsById(shopId);
		System.out.println("shop:" + shop);
		model.addAttribute("shop", shop);
		session.setAttribute("pageNow", pageNow);
		return "deleteproduct";
	}
	@RequestMapping("/goodsAdd.do")
	public String GoodsAdd(Goods goods, Model model) {
		goodsService.goodsAdd(goods);
		return "success";
	}
	
	@RequestMapping("/goodsChange.do")
	public String GoodsChange(Goods goods, Model model) {
		goodsService.goodsChange(goods);
		return "success";
	}
	@RequestMapping("/goodsDelete.do")
	public String GoodsDelete(Goods goods, Model model) {
		goodsService.goodsDelete(goods);
		return "success";
	}
}
