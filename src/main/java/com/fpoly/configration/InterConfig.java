package com.fpoly.configration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.fpoly.service.AuthInterceptor;
import com.fpoly.service.GlobalInterceptor;


@Configuration
public class InterConfig implements WebMvcConfigurer {
    @Autowired
    GlobalInterceptor global;

    @Autowired
    AuthInterceptor auth;
    
    //phương thức addInterceptors: Được sử dụng để đăng ký các interceptor với InterceptorRegistry.
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(global)
        // áp dụng interceptor này cho đường dẫn '/**', sẽ quét qua interceptor
        .addPathPatterns("/**")
        // loại trừ đường dẫn '/assets/**', không quét qua interceptor
        .excludePathPatterns("/assets/**");
        
        registry.addInterceptor(auth)
        .addPathPatterns("/admin/**")
        .excludePathPatterns("/assets/**");

    }
    

}
