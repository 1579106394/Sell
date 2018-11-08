package com.bishe.sell.pojo;

import java.io.Serializable;

/**
 * CREATE TABLE `comment` (
 *   `comment_id` varchar(36) NOT NULL,
 *   `comment_user` varchar(36) NOT NULL,
 *   `comment_goods` varchar(36) NOT NULL,
 *   `comment_created_time` varchar(36) NOT NULL,
 *   `comment_article` mediumtext NOT NULL,
 *   `comment_flag` int(2) NOT NULL DEFAULT '1' COMMENT '1正常2删除',
 *   PRIMARY KEY (`comment_id`)
 * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 */

public class Comment implements Serializable {

    private String commentId;
    private User user;
    private Goods goods;
    private String commentCreatedTime;
    private String commentArticle;
    private Integer commentFlag;

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
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

    public String getCommentCreatedTime() {
        return commentCreatedTime;
    }

    public void setCommentCreatedTime(String commentCreatedTime) {
        this.commentCreatedTime = commentCreatedTime;
    }

    public String getCommentArticle() {
        return commentArticle;
    }

    public void setCommentArticle(String commentArticle) {
        this.commentArticle = commentArticle;
    }

    public Integer getCommentFlag() {
        return commentFlag;
    }

    public void setCommentFlag(Integer commentFlag) {
        this.commentFlag = commentFlag;
    }
}
