package com.cyy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cyy.javabean.Buyer;
import com.cyy.javabean.Cart;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;
import com.cyy.service.CartService;
import com.cyy.service.GoodsService;

@Controller
public class CartController {
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private CartService cartService;

	@RequestMapping("/cartAdd.do")
	public String cartAdd(Integer shopId, Model model) {
		Goods shop = goodsService.queryGoodsById(shopId);
		model.addAttribute("shop", shop);
		return "product";
	}

	@RequestMapping("/cartAddSave.do")
	public String cartAddSave(Cart cart, Model model, HttpSession session) {
		
		cartService.cartSave(cart);
		Object sc = session.getAttribute("sc");
		if (sc != null) {
			SearchCondition searchCondition = (SearchCondition) sc;
			List<Goods> listShop = goodsService.queryGoods(searchCondition);
			model.addAttribute("listShop", listShop);
		}
		return "products-grid";
	}
	
	private int pageSize = 3;

	@RequestMapping("/queryCart.do")
	public String queryCart(String condition, Integer pageNow, Model model,
			HttpSession session) {
		SearchCondition sc = new SearchCondition(condition, pageNow, pageSize);
		List<Cart> listCart = cartService.queryCart(sc);
		model.addAttribute("listCart", listCart);
		session.setAttribute("sc", sc);
		return "checkout-1";
	}
	
	@RequestMapping("/cartDelete.do")
	public String cartDelete(Cart cart, Model model, HttpSession session) {
		
		cartService.cartDelete(cart);
		Object sc = session.getAttribute("sc");
		if (sc != null) {
			SearchCondition searchCondition = (SearchCondition) sc;
			List<Goods> listShop = goodsService.queryGoods(searchCondition);
			model.addAttribute("listShop", listShop);
		}
		return "checkout-1";
	}
}