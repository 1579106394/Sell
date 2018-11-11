package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.GoodsMapper;
import com.bishe.sell.mapper.HistoryMapper;
import com.bishe.sell.pojo.Goods;
import com.bishe.sell.pojo.History;
import com.bishe.sell.service.HistoryService;
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
public class HistoryServiceImpl implements HistoryService {

    @Autowired
    private HistoryMapper historyMapper;

    @Autowired
    private GoodsMapper goodsMapper;

    @Override
    public void addPriceHistory(History history) {
        // 补全属性
        history.setHistoryId(UUID.randomUUID().toString());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String time = sdf.format(new Date());
        history.setHistoryCreatedTime(time);
        history.setHistoryFlag(1);
        historyMapper.addPriceHistory(history);
        // 喊价结束，更新一下商品中的当前出价和出价人数

        Goods goods = new Goods();
        goods.setGoodsId(history.getGoods().getGoodsId());
        goods.setGoodsCurrentPrice(history.getHistoryPrice());
        goodsMapper.updateGoodsAfterAddPrice(goods);


    }

    @Override
    public List<History> getHistoryListByGoodsId(String goodsId) {
        return historyMapper.getHistoryListByGoodsId(goodsId);
    }

    @Override
    public Page<History> getHistoryList(Page<History> p) {
        // 当前页
        if(p.getCurrentPage() == null) {
            p.setCurrentPage(1);
        }
        if(p.getCurrentCount() == null) {
            // 每页显示10条
            p.setCurrentCount(10);
        }
        // 索引
        p.setIndex((p.getCurrentPage() - 1) * p.getCurrentCount());

        //查询数据
        List<History> historyList = historyMapper.getHistoryList(p);

        //查询总条数
        Integer totalCount = historyMapper.getHistoryCount(p);

        //总条数
        p.setTotalCount(totalCount);
        //总页数
        p.setTotalPage((int) Math.ceil(totalCount * 1.0 / p.getCurrentCount()));
        p.setList(historyList);

        return p;
    }

    @Override
    public void deleteHistory(String historyId) {
        // 先查出这个喊价的商品，后面需要更新这个商品的信息
        History history = historyMapper.getHistoryById(historyId);

        Goods goods = history.getGoods();

        historyMapper.deleteHistory(historyId);

        // 删除完之后，需要更新一下商品的最新喊价
        //查询属于这个商品的最高喊价
        Double topPrice = historyMapper.getTopPriceByGoodsId(goods.getGoodsId());

        goods.setGoodsCurrentPrice(topPrice);
        goodsMapper.updateGoodsAfterDeleteHistory(goods);
    }

    @Override
    public List<History> getAllHistoryList() {
        return historyMapper.getAllHistoryList();
    }

}
