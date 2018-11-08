package com.bishe.sell.service;

import com.bishe.sell.pojo.User;

public interface UserService {

    // 根据用户名查询用户
    User getUserByUsername(User user);

    // 新增用户
    void addUser(User user);
}