package com.bishe.sell.controller;

import com.bishe.sell.service.BuyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/buy/")
public class BuyController {

    @Autowired
    private BuyService buyService;

}
