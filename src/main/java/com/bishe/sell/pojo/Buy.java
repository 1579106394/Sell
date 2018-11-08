package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `buy` (
 *   `buy_id` varchar(36) NOT NULL COMMENT '交易历史id',
 *   `buy_buyer` varchar(36) NOT NULL COMMENT '买家id',
 *   `buy_seller` varchar(36) NOT NULL COMMENT '卖家',
 *   `buy_goods` varchar(36) NOT NULL COMMENT '商品',
 *   `buy_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
 *   PRIMARY KEY (`buy_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class Buy implements Serializable {

    private String buyId;
    private User buyer;
    private User seller;
    private Goods goods;
    private Integer buyFlag;

    public String getBuyId() {
        return buyId;
    }

    public void setBuyId(String buyId) {
        this.buyId = buyId;
    }

    public User getBuyer() {
        return buyer;
    }

    public void setBuyer(User buyer) {
        this.buyer = buyer;
    }

    public User getSeller() {
        return seller;
    }

    public void setSeller(User seller) {
        this.seller = seller;
    }

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Integer getBuyFlag() {
        return buyFlag;
    }

    public void setBuyFlag(Integer buyFlag) {
        this.buyFlag = buyFlag;
    }
}
