package com.bishe.sell.controller;

import com.bishe.sell.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/comment/")
public class CommentController {

    @Autowired
    private CommentService commentService;

}
