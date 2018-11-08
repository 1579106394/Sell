package com.bishe.sell.controller;

import com.bishe.sell.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller("api/user/")
public class UserController {

    @Autowired
    private UserService userService;

}
