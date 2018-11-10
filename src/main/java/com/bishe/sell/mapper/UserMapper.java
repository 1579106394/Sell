package com.bishe.sell.mapper;

import com.bishe.sell.pojo.User;
import com.bishe.sell.utils.Page;

import java.util.List;

public interface UserMapper {

    // 根据用户名查询用户
    User getUserByUsername(User user);

    // 新增用户
    void addUser(User user);

    // 获取用户
    User getUser(User user);

    // 编辑用户
    void editUser(User user);

    // 获取用户列表
    List<User> getUserList(Page<User> p);

    // 获取用户数量
    Integer getUserCount(Page<User> p);

    // 删除用户
    void deleteUserById(String userId);

    // 切换管理员与用户身份
    void updateUserAdminById(User u);
}
