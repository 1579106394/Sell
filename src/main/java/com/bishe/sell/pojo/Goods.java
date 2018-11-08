package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `goods` (
 * `goods_id` varchar(36) NOT NULL,
 * `goods_user` varchar(36) NOT NULL COMMENT '用户id',
 * `goods_type` varchar(36) NOT NULL COMMENT '商品类型',
 * `goods_created_time` varchar(36) NOT NULL COMMENT '发布时间',
 * `goods_started_time` varchar(36) NOT NULL COMMENT '开始时间',
 * `goods_end_time` varchar(36) NOT NULL COMMENT '结束时间',
 * `goods_price` double NOT NULL DEFAULT '0' COMMENT '最终价格',
 * `goods_current_price` double NOT NULL DEFAULT '0' COMMENT '当前出价',
 * `goods_started_price` double NOT NULL DEFAULT '0' COMMENT '起拍价格',
 * `goods_price_num` int(11) NOT NULL DEFAULT '0' COMMENT '当前出价人数',
 * `goods_click_num` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
 * `goods_title` varchar(80) NOT NULL COMMENT '商品标题',
 * `goods_img` mediumtext COMMENT '商品图片，使用嘤文逗号隔开',
 * `goods_article` mediumtext COMMENT '商品内容',
 * `goods_brief` mediumtext COMMENT '商品简介',
 * `goods_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常2删除3卖出',
 * PRIMARY KEY (`goods_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class Goods implements Serializable {

    private String goodsId;
    private User user;
    private Type type;
    private String goodsCreatedTime;
    private String goodsStartedTime;
    private String goodsEndTime;
    private Double goodsPrice;
    private Double goodsCurrentPrice;
    private Double goodsStartedPrice;
    private Integer goodsPriceNum;
    private Integer goodsClickNum;
    private String goodsTitle;
    private String goodsImg;
    private String[] goodsImgs; // 这个是查到goodsImg之后拆开存到这里
    private String goodsArticle;
    private String goodsBrief;
    private Integer goodsFlag;

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getGoodsCreatedTime() {
        return goodsCreatedTime;
    }

    public void setGoodsCreatedTime(String goodsCreatedTime) {
        this.goodsCreatedTime = goodsCreatedTime;
    }

    public String getGoodsStartedTime() {
        return goodsStartedTime;
    }

    public void setGoodsStartedTime(String goodsStartedTime) {
        this.goodsStartedTime = goodsStartedTime;
    }

    public String getGoodsEndTime() {
        return goodsEndTime;
    }

    public void setGoodsEndTime(String goodsEndTime) {
        this.goodsEndTime = goodsEndTime;
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Double getGoodsCurrentPrice() {
        return goodsCurrentPrice;
    }

    public void setGoodsCurrentPrice(Double goodsCurrentPrice) {
        this.goodsCurrentPrice = goodsCurrentPrice;
    }

    public Double getGoodsStartedPrice() {
        return goodsStartedPrice;
    }

    public void setGoodsStartedPrice(Double goodsStartedPrice) {
        this.goodsStartedPrice = goodsStartedPrice;
    }

    public Integer getGoodsPriceNum() {
        return goodsPriceNum;
    }

    public void setGoodsPriceNum(Integer goodsPriceNum) {
        this.goodsPriceNum = goodsPriceNum;
    }

    public Integer getGoodsClickNum() {
        return goodsClickNum;
    }

    public void setGoodsClickNum(Integer goodsClickNum) {
        this.goodsClickNum = goodsClickNum;
    }

    public String getGoodsTitle() {
        return goodsTitle;
    }

    public void setGoodsTitle(String goodsTitle) {
        this.goodsTitle = goodsTitle;
    }

    public String getGoodsImg() {
        return goodsImg;
    }

    public void setGoodsImg(String goodsImg) {
        this.goodsImg = goodsImg;
    }

    public String[] getGoodsImgs() {
        return goodsImgs;
    }

    public void setGoodsImgs(String[] goodsImgs) {
        this.goodsImgs = goodsImgs;
    }

    public String getGoodsArticle() {
        return goodsArticle;
    }

    public void setGoodsArticle(String goodsArticle) {
        this.goodsArticle = goodsArticle;
    }

    public String getGoodsBrief() {
        return goodsBrief;
    }

    public void setGoodsBrief(String goodsBrief) {
        this.goodsBrief = goodsBrief;
    }

    public Integer getGoodsFlag() {
        return goodsFlag;
    }

    public void setGoodsFlag(Integer goodsFlag) {
        this.goodsFlag = goodsFlag;
    }
}
