package com.bishe.sell.controller;

import com.bishe.sell.pojo.Type;
import com.bishe.sell.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 首页的Controller，用来加载页面时初始化一些数据
 */
@Controller
public class IndexController {

    @Autowired
    private TypeService typeService;

    /**
     * 首页
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "index.html", method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {

        List<Type> typeList = typeService.getTypeList();

        session.setAttribute("typeList", typeList);

        return "index";
    }

}
