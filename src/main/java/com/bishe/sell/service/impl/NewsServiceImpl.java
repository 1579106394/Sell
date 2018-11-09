package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.NewsMapper;
import com.bishe.sell.pojo.News;
import com.bishe.sell.service.NewsService;
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
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsMapper newsMapper;

    @Override
    public void addNews(News news) {

        // 补全属性
        news.setNewsId(UUID.randomUUID().toString());
        news.setNewsReadNum(0);
        news.setNewsFlag(1);

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String date = sdf.format(new Date());
        news.setNewsCreatedTime(date);

        newsMapper.addNews(news);

    }

    @Override
    public Page<News> getNewsList(Page<News> p) {

        // 当前页
        if(p.getCurrentPage() == null) {
            p.setCurrentPage(1);
        }
        // 每页显示10条
        p.setCurrentCount(10);
        // 索引
        p.setIndex((p.getCurrentPage() - 1) * p.getCurrentCount());

        //查询数据
        List<News> newsList = newsMapper.getNewsList(p);

        //查询总条数
        Integer totalCount = newsMapper.getNewsCount(p);

        //总条数
        p.setTotalCount(totalCount);
        //总页数
        p.setTotalPage((int) Math.ceil(totalCount / 10.0));
        p.setList(newsList);

        return p;
    }

    @Override
    public void deleteNewsById(String newsId) {
        newsMapper.deleteNewsById(newsId);
    }

    @Override
    public News getNewsById(String newsId) {
        return newsMapper.getNewsById(newsId);
    }

    @Override
    public void editNews(News news) {
        // 更新属性
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String date = sdf.format(new Date());
        news.setNewsCreatedTime(date);
        newsMapper.editNews(news);
    }
}
