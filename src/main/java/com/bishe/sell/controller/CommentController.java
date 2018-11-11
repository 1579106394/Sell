package com.bishe.sell.controller;

import com.bishe.sell.pojo.Comment;
import com.bishe.sell.service.CommentService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/comment/")
public class CommentController {

    @Autowired
    private CommentService commentService;

    /**
     * 发表评论
     * @param comment
     * @return
     */
    @RequestMapping("addComment.html")
    public String addComment(Comment comment) {

        commentService.addComment(comment);

        return "redirect:/api/goods/readGoods/" + comment.getGoods().getGoodsId() + ".html";
    }

    /**
     * 分页查询评论
     * @param model
     * @param p
     * @return
     */
    @RequestMapping("admin/commentList.html")
    public String commentList(Model model, Page<Comment> p) {

        p.setCurrentCount(8);

        p = commentService.getCommentList(p);

        model.addAttribute("page", p);

        return "admin/comment/commentList";
    }

    /**
     * 删除评论
     * @param commentId
     * @return
     */
    @RequestMapping("admin/deleteComment/{commentId}.html")
    public String deleteComment(@PathVariable String commentId) {

        commentService.deleteCommentById(commentId);

        return "redirect:/api/comment/admin/commentList.html";
    }

}
