package com.bishe.sell.mapper;

import com.bishe.sell.pojo.Comment;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface CommentMapper {

    // 发表评论
    void addComment(Comment comment);

    // 查询某个商品的评论列表
    List<Comment> getCommentListByGoodsId(String goodsId);

    // 分页查询商品评论
    List<Comment> getCommentList(Page<Comment> p);

    // 查询商品评论总数
    Integer getCommentCount(Page<Comment> p);

    // 根据id删除评论
    void deleteCommentById(String commentId);

    // 删除无意义的评论
    List<Comment> getAllCommentList();
}
