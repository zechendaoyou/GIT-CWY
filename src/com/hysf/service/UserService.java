package com.hysf.service;

import com.hysf.entity.User;

public interface UserService {

    /**
     * 注册用户
     */
    public void registerUser(User user);

    /**
     * 登录
     */
    public User login(String userName, String password);

    /**
     * 检查用户名是否可用
     */
    public boolean existsUserName(String userName);
}
