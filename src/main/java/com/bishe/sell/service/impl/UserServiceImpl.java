package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.UserMapper;
import com.bishe.sell.pojo.User;
import com.bishe.sell.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByUsername(User user) {
        return userMapper.getUserByUsername(user);
    }

    @Override
    public void addUser(User user) {
        // 随机生成id
        user.setUserId(UUID.randomUUID().toString());
        // 默认用户为普通用户
        user.setUserRole(1);
        // 用户状态为正常
        user.setUserFlag(1);
        userMapper.addUser(user);
    }
}
