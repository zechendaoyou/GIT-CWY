package com.hysf.service.impl;

import com.hysf.dao.UserDao;
import com.hysf.dao.impl.UserDaoImpl;
import com.hysf.entity.User;
import com.hysf.service.UserService;

import java.util.Optional;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registerUser(User user) {
        // java8新特性
        // User userEntity = Optional.ofNullable(user).orElse(new User());
        if (user.getUsername() == null || user.getPassword() == null) {
            System.out.println("用户名或密码不能为空");
            System.out.println("或者没有获取到用户名和密码");
        }
        if (user.getUsername().length() < 4) {
            System.out.println("用户名不合法");
        }
        if (user.getPassword().length() < 4) {
            System.out.println("密码不合法");
        }

        System.out.println(user);
        userDao.saveUser(user);
    }

    @Override
    public User login(String userName, String password) {
        if (userName == null || password == null) {
            System.out.println("用户名或密码不能为空");
            System.out.println("或者没有获取到用户名和密码");
        }
        return userDao.queryUserByUsernameAndPassword(userName, password);
    }

    @Override
    public boolean existsUserName(String userName) {
        if (userDao.queryUserByUsername(userName) == null) {
            // 等于null 说明没有查到，没有查到表示用户名可用
            return false;
        }
        // 查到 说明不可用
        return true;
    }
}
