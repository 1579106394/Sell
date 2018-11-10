package com.bishe.sell.service;

import com.bishe.sell.pojo.User;
import com.bishe.sell.utils.Page;

public interface UserService {

    // 根据用户名查询用户
    User getUserByUsername(User user);

    // 新增用户
    void addUser(User user);

    // 获取用户
    User getUser(User user);

    // 编辑用户
    void editUser(User user);

    // 获取用户列表
    Page<User> getUserList(Page<User> p);

    // 删除用户
    void deleteUserById(String userId);

    // 切换身份（管理员、用户）
    void updateUserAdminById(String userId);
}