package com.bishe.sell.controller;

import com.bishe.sell.pojo.User;
import com.bishe.sell.service.UserService;
import com.bishe.sell.utils.Page;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Controller
@RequestMapping("api/user/")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 获取我的信息
     * @param session
     * @param model
     * @return
     */
    @RequestMapping("admin/myinfo.html")
    public String myinfo(HttpSession session, Model model) {

        User user = (User) session.getAttribute("user");

        User u = userService.getUser(user);

        model.addAttribute("user", u);

        return "admin/user/myinfo";
    }

    /**
     * 编辑我的信息
     * @param model
     * @param user
     * @param uploadFile
     * @param session
     * @return
     */
    @RequestMapping("admin/eidtUser.html")
    public String editUser(Model model, User user,
                           @RequestParam("uploadFile") MultipartFile uploadFile,
                           HttpSession session) {

        // 随机生成文件名
        String name = UUID.randomUUID().toString().replaceAll("-", "");
        //获取文件后缀名
        String ext = FilenameUtils.getExtension(uploadFile.getOriginalFilename());

        try {
            uploadFile.transferTo(new File("C:\\sell\\photo\\" + name + "." + ext));
        } catch (IOException e) {
            e.printStackTrace();
        }

        user.setUserImg("photo\\" + name + "." + ext);

        //校验手机号和邮箱是否重复
        // 根据邮箱查询用户，如果邮箱已存在，提示
        String userEmail = user.getUserEmail();

        User oldUser = userService.getUserByUsername(user);

        if(!userEmail.matches("^[A-Za-z\\d]+([-_.][A-Za-z\\d]+)*@([A-Za-z\\d]+[-.])+[A-Za-z\\d]{2,4}$")) {
            // 邮箱格式不匹配、
            model.addAttribute("error", "邮箱格式不正确！");
            model.addAttribute("user", user);
            return "admin/user/myinfo";
        }
        User u1 = userService.getUserByEmail(userEmail);
        if (u1 != null && !u1.getUserEmail().equals(oldUser.getUserEmail())) {
            model.addAttribute("error", "该邮箱已存在！");
            model.addAttribute("user", user);
            return "admin/user/myinfo";
        }

        // 根据手机号查询用户，如果手机号已存在，提示
        Long userTelephone = user.getUserTelephone();
        if(!userTelephone.toString().matches("^[1]([3|5|8][0-9]{1})[0-9]{8}$")) {
            // 手机号格式不匹配
            model.addAttribute("error", "手机号格式不正确！");
            model.addAttribute("user", user);
            return "admin/user/myinfo";
        }
        u1 = userService.getUserByTelephone(userTelephone);
        if (u1 != null && !u1.getUserTelephone().equals(oldUser.getUserTelephone())) {
            model.addAttribute("error", "该手机号已存在！");
            model.addAttribute("user", user);
            return "admin/user/myinfo";
        }


        userService.editUser(user);
        User u = userService.getUser(user);
        // 修改完毕，将用户信息放回session
        session.setAttribute("user", u);
        return "redirect:/api/user/admin/myinfo.html";
    }

    /**
     * 用户列表
     * @param model
     * @param p
     * @return
     */
    @RequestMapping("admin/userList.html")
    public String userList(Model model, Page<User> p) {
        p = userService.getUserList(p);

        model.addAttribute("page", p);

        return "admin/user/userList";
    }

    /**
     * 删除用户（逻辑删除）
     * @param userId
     * @return
     */
    @RequestMapping("admin/deleteUser/{userId}.html")
    public String deleteUser(@PathVariable String userId) {

        userService.deleteUserById(userId);

        return "redirect:/api/user/admin/userList.html";
    }

    /**
     * 切换管理员状态
     * @param userId
     * @return
     */
    @RequestMapping("admin/toAdmin/{userId}.html")
    public String toAdmin(@PathVariable String userId) {

        userService.updateUserAdminById(userId);

        return "redirect:/api/user/admin/userList.html";
    }

}
