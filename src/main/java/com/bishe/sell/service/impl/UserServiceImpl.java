package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.UserMapper;
import com.bishe.sell.pojo.User;
import com.bishe.sell.service.UserService;
import com.bishe.sell.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
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

    @Override
    public User getUser(User user) {
        return userMapper.getUser(user);
    }

    @Override
    public void editUser(User user) {
        userMapper.editUser(user);
    }

    @Override
    public Page<User> getUserList(Page<User> p) {
        // 当前页
        if(p.getCurrentPage() == null) {
            p.setCurrentPage(1);
        }
        // 每页显示10条
        p.setCurrentCount(10);
        // 索引
        p.setIndex((p.getCurrentPage() - 1) * p.getCurrentCount());

        //查询数据
        List<User> newsList = userMapper.getUserList(p);

        //查询总条数
        Integer totalCount = userMapper.getUserCount(p);

        //总条数
        p.setTotalCount(totalCount);
        //总页数
        p.setTotalPage((int) Math.ceil(totalCount / 10.0));
        p.setList(newsList);

        return p;
    }

    @Override
    public void deleteUserById(String userId) {
        userMapper.deleteUserById(userId);
    }

    @Override
    public void updateUserAdminById(String userId) {
        // 获取用户
        User u = new User();
        u.setUserId(userId);
        User user = userMapper.getUser(u);
        if(user.getUserRole() == 1) {
            u.setUserRole(2);
        }else {
            u.setUserRole(1);
        }
        userMapper.updateUserAdminById(u);
    }

    @Override
    public User getUserByEmail(String userEmail) {
        return userMapper.getUserByEmail(userEmail);
    }

    @Override
    public User getUserByTelephone(Long userTelephone) {
        return userMapper.getUserByTelephone(userTelephone);
    }
}
