package com.hysf.dao;

import com.hysf.entity.User;

public interface UserDao {

    /**
     * 根据用户名查询用户信息
     *
     * @param username 用户名
     * @return 用户对象
     */
    public User queryUserByUsername(String username);

    /**
     * 根据用户名和密码查询用户信息
     * @param username 用户名
     * @param password 密码
     * @return 用户对象
     */
    public User queryUserByUsernameAndPassword(String username, String password);

    /**
     * 保存用户信息
     * @param user 前端请求的用户信息
     * @return 返回的-1 就是失效，其余的都是影响条数
     */
    public int saveUser(User user);
}
