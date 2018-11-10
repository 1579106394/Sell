package com.bishe.sell.service;

import com.bishe.sell.pojo.Goods;
import com.bishe.sell.utils.Page;

public interface GoodsService {

    // 查看商品列表
    Page<Goods> getGoodsList(Page<Goods> p);

    // 新增商品
    void addGoods(Goods goods);

    // 根据id删除商品
    void deleteGoodsById(String goodsId);

    // 根据id获取商品
    Goods getGoodsById(String goodsId);

    // 编辑商品
    void editGoods(Goods goods);

    // 点击量+1
    void updateClickNum(String goodsId);
}