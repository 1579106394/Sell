package com.bishe.sell.controller;

import com.bishe.sell.pojo.Goods;
import com.bishe.sell.pojo.News;
import com.bishe.sell.service.GoodsService;
import com.bishe.sell.service.NewsService;
import com.bishe.sell.service.TypeService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * 首页的Controller，用来加载页面时初始化一些数据
 */
@Controller
public class IndexController {

    @Autowired
    private TypeService typeService;

    @Autowired
    private NewsService newsService;

    @Autowired
    private GoodsService goodsService;

    /**
     * 首页
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "index.html", method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {

        // 查询新闻列表
        Page p1 = new Page();
        p1.setCurrentCount(6);
        Page<News> newsPage = newsService.getNewsList(p1);
        model.addAttribute("newsPage", newsPage);

        // 查询推荐拍卖品
        Page p2 = new Page();
        p2.setCurrentCount(7);
        Page<Goods> goodsPage = goodsService.getGoodsList(p2);
        model.addAttribute("goodsPage", goodsPage);

        return "index";
    }

}
