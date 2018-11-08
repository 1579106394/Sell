package com.bishe.sell.controller;

import com.bishe.sell.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/news/")
public class NewsController {

    @Autowired
    private NewsService newsService;

}
