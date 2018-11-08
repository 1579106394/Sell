package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `news` (
 *   `news_id` varchar(36) NOT NULL,
 *   `news_user` varchar(36) NOT NULL COMMENT '用户id',
 *   `news_title` varchar(50) NOT NULL,
 *   `news_article` mediumtext,
 *   `news_created_time` varchar(36) NOT NULL COMMENT '发布时间',
 *   `news_read_num` int(11) NOT NULL DEFAULT '0' COMMENT '阅读量',
 *   `news_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常 2删除',
 *   PRIMARY KEY (`news_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */
public class News implements Serializable {

    private String newsId;
    private User user;
    private String newsTitle;
    private String newsArticle;
    private String newsCreatedTime;
    private Integer newsReadNum;
    private Integer newsFlag;

    public String getNewsId() {
        return newsId;
    }

    public void setNewsId(String newsId) {
        this.newsId = newsId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

    public String getNewsArticle() {
        return newsArticle;
    }

    public void setNewsArticle(String newsArticle) {
        this.newsArticle = newsArticle;
    }

    public String getNewsCreatedTime() {
        return newsCreatedTime;
    }

    public void setNewsCreatedTime(String newsCreatedTime) {
        this.newsCreatedTime = newsCreatedTime;
    }

    public Integer getNewsReadNum() {
        return newsReadNum;
    }

    public void setNewsReadNum(Integer newsReadNum) {
        this.newsReadNum = newsReadNum;
    }

    public Integer getNewsFlag() {
        return newsFlag;
    }

    public void setNewsFlag(Integer newsFlag) {
        this.newsFlag = newsFlag;
    }
}
