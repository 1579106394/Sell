package com.bishe.sell.mapper;

import com.bishe.sell.pojo.Goods;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface GoodsMapper {

    // 获取商品列表
    List<Goods> getGoodsList(Page<Goods> p);

    // 商品数量
    Integer getGoodsCount(Page<Goods> p);

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
