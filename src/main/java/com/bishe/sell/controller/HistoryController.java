package com.bishe.sell.controller;

import com.bishe.sell.pojo.History;
import com.bishe.sell.service.HistoryService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/history/")
public class HistoryController {

    @Autowired
    private HistoryService historyService;

    /**
     * 喊价
     * @param history
     * @return
     */
    @RequestMapping("addPriceHistory.html")
    public String addPriceHistory(History history) {

        historyService.addPriceHistory(history);

        return "redirect:/api/goods/readGoods/" + history.getGoods().getGoodsId() + ".html";
    }

    /**
     * 分页查询喊价历史记录
     * @param model
     * @param p
     * @return
     */
    @RequestMapping("admin/historyList.html")
    public String historyList(Model model, Page<History> p) {

        p = historyService.getHistoryList(p);

        model.addAttribute("page", p);

        return "admin/history/historyList";
    }

    /**
     * 根据id删除历史
     * @param historyId
     * @return
     */
    @RequestMapping("admin/deleteHistory/{historyId}.html")
    public String deleteHistory(@PathVariable String historyId) {

        historyService.deleteHistory(historyId);

        return "redirect:/api/history/admin/historyList.html";
    }

}
