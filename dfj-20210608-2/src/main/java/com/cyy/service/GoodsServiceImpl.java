package com.cyy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyy.dao.GoodsMapper;

import com.cyy.javabean.Goods;
import com.cyy.javabean.SearchCondition;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;

	@Override
	public List<Goods> queryGoods(SearchCondition sc) {
		if (sc.getCondition() == null)
			sc.setCondition("");
		if (sc.getPageNow() == 0)
			sc.setPageNow(1);
		String condition = sc.getCondition();
		sc.setCondition("%" + condition + "%");
		sc.setBeginRow((sc.getPageNow() - 1) * sc.getPageSize());
		int recordCnt = goodsMapper.queryGoodsRecordCnt(sc);
		if (recordCnt % sc.getPageSize() == 0)
			sc.setPageCnt(recordCnt / sc.getPageSize());
		else
			sc.setPageCnt(recordCnt / sc.getPageSize() + 1);
		List<Goods> list = goodsMapper.queryGoods(sc);
		sc.setCondition(condition);
		return list;
	}

	@Override
	public Goods queryGoodsById(Integer gds_id) {
		return goodsMapper.queryGoodsById(gds_id);
	}
	
	@Override
	public int goodsAdd(Goods goods) {
		return goodsMapper.goodsAdd(goods);
	}
	@Override
	public int goodsChange(Goods goods) {
		return goodsMapper.goodsChange(goods);
	}
	@Override
	public int goodsDelete(Goods goods) {
		return goodsMapper.goodsDelete(goods);
	}
}
