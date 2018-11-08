package com.bishe.sell.controller;

import com.bishe.sell.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/type/")
public class TypeController {

    @Autowired
    private TypeService typeService;

}
