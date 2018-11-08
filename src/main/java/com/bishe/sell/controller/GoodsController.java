package com.bishe.sell.controller;

import com.bishe.sell.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/goods/")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

}
