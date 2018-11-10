package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.GoodsMapper;
import com.bishe.sell.pojo.Goods;
import com.bishe.sell.service.GoodsService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public Page<Goods> getGoodsList(Page<Goods> p) {
        // 当前页
        if(p.getCurrentPage() == null) {
            p.setCurrentPage(1);
        }
        if(p.getCurrentCount() == null) {
            // 每页显示8条
            p.setCurrentCount(8);
        }
        // 索引
        p.setIndex((p.getCurrentPage() - 1) * p.getCurrentCount());

        //查询数据
        List<Goods> newsList = goodsMapper.getGoodsList(p);

        //查询总条数
        Integer totalCount = goodsMapper.getGoodsCount(p);

        //总条数
        p.setTotalCount(totalCount);
        //总页数
        p.setTotalPage((int) Math.ceil(totalCount / 10.0));
        p.setList(newsList);

        return p;
    }

    @Override
    public void addGoods(Goods goods) {
        // 补全属性
        goods.setGoodsId(UUID.randomUUID().toString());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String createdTime = sdf.format(new Date());
        goods.setGoodsCreatedTime(createdTime);
        goods.setGoodsPrice(goods.getGoodsStartedPrice()); // 默认最终价格是起拍价格
        goods.setGoodsCurrentPrice(goods.getGoodsStartedPrice());
        goods.setGoodsPriceNum(0);
        goods.setGoodsClickNum(0);
        goods.setGoodsFlag(1);
        goodsMapper.addGoods(goods);

    }

    @Override
    public void deleteGoodsById(String goodsId) {
        goodsMapper.deleteGoodsById(goodsId);
    }

    @Override
    public Goods getGoodsById(String goodsId) {
        return goodsMapper.getGoodsById(goodsId);
    }

    @Override
    public void editGoods(Goods goods) {
        goodsMapper.editGoods(goods);
    }

    @Override
    public void updateClickNum(String goodsId) {
        goodsMapper.updateClickNum(goodsId);
    }
}
