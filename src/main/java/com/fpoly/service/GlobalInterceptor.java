package com.fpoly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fpoly.Dao.CategoryDao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// mục đích ghi nhật ký, theo dõi cái request(yêu cầu người dùng nhập vào uri)
@Service
public class GlobalInterceptor implements HandlerInterceptor {
    @Autowired
    CategoryDao dao;

    // trước controller, lấy uri người dùng search, ghi vào thuộc tính "uri"
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        request.setAttribute("uri", request.getRequestURI());
        return true;
    }

    // sau controller trước view( trả về cho người dùng), thuộc tính "categories" với giá trị từ hàm CSDL
    @Override
    public void postHandle(HttpServletRequest req, HttpServletResponse res, Object handler, ModelAndView mv) throws Exception {
        req.setAttribute("categories", dao.findAll());
    }
}
