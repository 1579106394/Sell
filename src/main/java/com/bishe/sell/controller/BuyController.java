package com.bishe.sell.controller;

import com.bishe.sell.service.BuyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/buy/")
public class BuyController {

    @Autowired
    private BuyService buyService;

}
