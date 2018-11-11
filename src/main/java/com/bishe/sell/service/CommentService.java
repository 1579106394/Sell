package com.bishe.sell.service;

import com.bishe.sell.pojo.Comment;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface CommentService {

    // 新增评论
    void addComment(Comment comment);

    // 查询某个商品的评论列表
    List<Comment> getCommentListByGoodsId(String goodsId);

    // 分页查询评论
    Page<Comment> getCommentList(Page<Comment> p);

    // 根据id删除评论
    void deleteCommentById(String commentId);

    // 查询所有评论
    List<Comment> getAllCommentList();
}