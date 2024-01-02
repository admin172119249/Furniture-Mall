package com.cyy.dao;

import java.util.List;

import com.cyy.javabean.Buyer;
import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;

public interface GoodsMapper {
	List<Goods> queryGoods(SearchCondition sc);

	int queryGoodsRecordCnt(SearchCondition sc);
	Goods queryGoodsById(Integer gds_id);
	public int goodsAdd(Goods goods);

	public int goodsChange(Goods goods);

	public int goodsDelete(Goods goods);
}