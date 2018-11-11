package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.CommentMapper;
import com.bishe.sell.pojo.Comment;
import com.bishe.sell.service.CommentService;
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
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public void addComment(Comment comment) {
        // 补全属性
        comment.setCommentId(UUID.randomUUID().toString());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String time = sdf.format(new Date());
        comment.setCommentCreatedTime(time);
        comment.setCommentFlag(1);
        commentMapper.addComment(comment);
    }

    @Override
    public List<Comment> getCommentListByGoodsId(String goodsId) {
        return commentMapper.getCommentListByGoodsId(goodsId);
    }

    @Override
    public Page<Comment> getCommentList(Page<Comment> p) {
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
        List<Comment> commentList = commentMapper.getCommentList(p);

        //查询总条数
        Integer totalCount = commentMapper.getCommentCount(p);

        //总条数
        p.setTotalCount(totalCount);
        //总页数
        p.setTotalPage((int) Math.ceil(totalCount * 1.0 / p.getCurrentCount()));
        p.setList(commentList);

        return p;
    }

    @Override
    public void deleteCommentById(String commentId) {
        commentMapper.deleteCommentById(commentId);
    }

    @Override
    public List<Comment> getAllCommentList() {
        return commentMapper.getAllCommentList();
    }
}
