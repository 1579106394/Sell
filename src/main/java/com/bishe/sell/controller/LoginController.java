package com.bishe.sell.controller;

import com.bishe.sell.pojo.User;
import com.bishe.sell.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * 登录相关Controller，独立于UserController
 */
@Controller
@RequestMapping("api/user/")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "register.html", method = RequestMethod.POST)
    public String register(Model model, User user) {

        try {
            // 先根据用户名查询用户是否存在，如果存在，提示用户已存在
            User u = userService.getUserByUsername(user);
            if (u != null) {
                model.addAttribute("error", "该用户已存在！");
                return "register";
            }

            //用户不存在
            userService.addUser(user);

            return "login";
        } catch (Exception e) {
            model.addAttribute("error", "请填写所有项");
            return "register";
        }

    }

    @RequestMapping(value = "login.html", method = RequestMethod.POST)
    public String login(Model model, User user, HttpSession session) {

        User u = userService.getUserByUsername(user);

        if(u == null) {
            model.addAttribute("error", "用户名或密码错误！");
            return "login";
        }else {
            // 用户存在
            if(!u.getPassword().equals(user.getPassword())) {
                // 密码错误
                model.addAttribute("error", "用户名或密码错误！");
                return "login";
            }
        }

        session.setAttribute("user", u);

        return "index";
    }

    @RequestMapping(value = "logout.html", method = RequestMethod.GET)
    public String logout(Model model, HttpSession session) {

        session.removeAttribute("user");

        return "index";
    }


}
