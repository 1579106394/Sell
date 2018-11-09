package com.bishe.sell.controller;

import com.bishe.sell.pojo.News;
import com.bishe.sell.service.NewsService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("api/news/")
public class NewsController {

    @Autowired
    private NewsService newsService;

    /**
     * 获取新闻列表
     *
     * @param model
     * @param p
     * @return
     */
    @RequestMapping("admin/newsList.html")
    public String newsList(Model model, Page p) {

        p = newsService.getNewsList(p);

        model.addAttribute("page", p);

        return "admin/news/newsList";
    }

    /**
     * 发布新闻
     *
     * @param model
     * @param news
     * @return
     */
    @RequestMapping("admin/addNews.html")
    public String addNews(Model model, News news) {

        newsService.addNews(news);

        return "redirect:/api/news/admin/newsList.html";
    }

    /**
     * 根据id删除新闻
     * @param newsId
     * @return
     */
    @RequestMapping("admin/deleteNews/{newsId}.html")
    public String deleteNews(@PathVariable String newsId) {

        newsService.deleteNewsById(newsId);

        return "redirect:/api/news/admin/newsList.html";
    }

    /**
     * 获取新闻信息，跳转到编辑页面
     * @param newsId
     * @param model
     * @return
     */
    @RequestMapping("admin/toEdit/{newsId}.html")
    public String toEdit(@PathVariable String newsId, Model model) {

        News news = newsService.getNewsById(newsId);

        model.addAttribute("news", news);

        return "admin/news/editNews";
    }

    @RequestMapping("admin/editNews.html")
    public String editNews(News news) {

        newsService.editNews(news);

        return "redirect:/api/news/admin/newsList.html";
    }

}
