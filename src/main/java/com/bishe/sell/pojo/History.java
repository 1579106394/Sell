package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `history` (
 *   `history_id` varchar(36) NOT NULL,
 *   `history_user` varchar(36) NOT NULL COMMENT '用户id',
 *   `history_goods` varchar(36) NOT NULL COMMENT '商品id',
 *   `history_price` double NOT NULL DEFAULT '0' COMMENT '本次出价多少',
 *   `history_created_time` varchar(36) NOT NULL COMMENT '本次出价时间',
 *   `history_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
 *   PRIMARY KEY (`history_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class History implements Serializable {

    private String historyId;
    private User user;
    private Goods goods;
    private Double historyPrice;
    private String historyCreatedTime;
    private Integer historyFlag;

    public String getHistoryId() {
        return historyId;
    }

    public void setHistoryId(String historyId) {
        this.historyId = historyId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Double getHistoryPrice() {
        return historyPrice;
    }

    public void setHistoryPrice(Double historyPrice) {
        this.historyPrice = historyPrice;
    }

    public String getHistoryCreatedTime() {
        return historyCreatedTime;
    }

    public void setHistoryCreatedTime(String historyCreatedTime) {
        this.historyCreatedTime = historyCreatedTime;
    }

    public Integer getHistoryFlag() {
        return historyFlag;
    }

    public void setHistoryFlag(Integer historyFlag) {
        this.historyFlag = historyFlag;
    }
}
