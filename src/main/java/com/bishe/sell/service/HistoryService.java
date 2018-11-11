package com.bishe.sell.service;

import com.bishe.sell.pojo.History;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface HistoryService {

    // 喊价
    void addPriceHistory(History history);

    // 查询某个商品的出价历史
    List<History> getHistoryListByGoodsId(String goodsId);

    // 分页查询出价历史
    Page<History> getHistoryList(Page<History> p);

    // 根据id删除喊价历史
    void deleteHistory(String historyId);

    // 查询所有出价历史
    List<History> getAllHistoryList();
}