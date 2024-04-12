package com.hysf.dao.impl;

import com.hysf.dao.BaseDao;
import com.hysf.dao.UserDao;
import com.hysf.entity.User;

public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public User queryUserByUsername(String username) {
        String sql = "select * from user where username = ?";
        return queryByOne(User.class, sql, username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select * from user where username = ? and password = ? ";
        return queryByOne(User.class, sql, username, password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into user (username, password,email,gender,hobby) values(?,?,?,?,?)";
        return update(sql,
                user.getUsername(),
                user.getPassword(),
                user.getEmail(),
                user.getGender(),
                user.getHobby());
    }
}
