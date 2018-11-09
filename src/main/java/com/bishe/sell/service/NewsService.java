package com.bishe.sell.service;

import com.bishe.sell.pojo.News;
import com.bishe.sell.utils.Page;

public interface NewsService {

    // 发布新闻
    void addNews(News news);

    // 获取新闻列表
    Page<News> getNewsList(Page<News> p);

    // 根据id删除新闻
    void deleteNewsById(String newsId);

    // 根据id获取新闻
    News getNewsById(String newsId);

    // 编辑新闻
    void editNews(News news);
}