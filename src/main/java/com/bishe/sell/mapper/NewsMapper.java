package com.bishe.sell.mapper;

import com.bishe.sell.pojo.News;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface NewsMapper {

    // 发布新闻
    void addNews(News news);

    // 分页查询新闻
    List<News> getNewsList(Page<News> p);

    // 根据id删除新闻
    void deleteNewsById(String newsId);

    // 根据id获取新闻
    News getNewsById(String newsId);

    // 修改新闻
    void editNews(News news);

    // 查询总条数
    Integer getNewsCount(Page<News> p);
}
