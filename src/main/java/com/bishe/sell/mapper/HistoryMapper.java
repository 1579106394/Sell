package com.bishe.sell.mapper;

import com.bishe.sell.pojo.History;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface HistoryMapper {

    // 喊价
    void addPriceHistory(History history);

    // 查询某个商品的出价历史
    List<History> getHistoryListByGoodsId(String goodsId);

    // 分页查询喊价历史
    List<History> getHistoryList(Page<History> p);

    // 查询总数
    Integer getHistoryCount(Page<History> p);

    // 根据id删除喊价历史
    void deleteHistory(String historyId);

    // 根据id获取喊价历史
    History getHistoryById(String historyId);

    // 查询某个商品的最高喊价
    Double getTopPriceByGoodsId(String goodsId);

    // 查询所有出价历史
    List<History> getAllHistoryList();
}
