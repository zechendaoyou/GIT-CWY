package com.hysf.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

public class Baseservice extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //中文乱码
        //一定要在获取参数前加上
        req.setCharacterEncoding("UTF-8");
        //响应乱码
        resp.setContentType("text/html; charset=UTF-8");
        //获取请求参数
        String action = req.getParameter("action");

        try{
            Method method = this.getClass().getDeclaredMethod(action,HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //中文乱码
        //一定要在获取参数前加上
        req.setCharacterEncoding("UTF-8");
        //获取请求参数
        String action = req.getParameter("action");

        try{
            Method method = this.getClass().getDeclaredMethod(action,HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this,req,resp);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
