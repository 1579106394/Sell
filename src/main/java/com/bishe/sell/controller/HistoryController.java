package com.bishe.sell.controller;

import com.bishe.sell.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/history/")
public class HistoryController {

    @Autowired
    private HistoryService historyService;

}
