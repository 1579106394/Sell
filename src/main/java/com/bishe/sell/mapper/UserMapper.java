package com.bishe.sell.mapper;

import com.bishe.sell.pojo.User;

public interface UserMapper {

    // 根据用户名查询用户
    User getUserByUsername(User user);

    // 新增用户
    void addUser(User user);
}
