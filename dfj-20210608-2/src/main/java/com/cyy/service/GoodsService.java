package com.cyy.service;

import java.util.List;

import com.cyy.javabean.Buyer;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;

public interface GoodsService {
	public List<Goods> queryGoods(SearchCondition sc);
	Goods queryGoodsById(Integer gds_id);
	public int goodsAdd(Goods goods);
	public int goodsChange(Goods goods);
	public int goodsDelete(Goods goods);
}