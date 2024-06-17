package com.fpoly.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.fpoly.entitys.Account;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Service
public class AuthInterceptor implements HandlerInterceptor {
    @Autowired
    SessionService session;
// xử lí các yêu cầu từ web trước controller
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
      
    	// lấy uri của yêu cầu hiện tại, lưu vào biến "uri"
    	String uri = request.getRequestURI();
    	
    	// lấy thông tin người dùng từ session ( đối tượng Account của người dùng từ session), lưu vào biến
        Account user = (Account) session.get("userSes"); // lấy từ session
        System.out.println(""+session.get("userSession"));
        String error = "";
        if (user == null) { // chưa đăng nhập
            error = "Please login!";  //thông báo lỗi
            
            // nếu người dùng không phải Admin, và truy cập đường dẫn "/admin/" báo lỗi
        } else if (!user.isRole() && uri.startsWith("/admin/")) { // không đúng vai trò
            error = "Access login!";
        }
        
        if (error.length() > 0) { // có lỗi
        	
        	// lưu uri vào session, với key "security-uri", 
	//mục đích ghi nhớ trang người dùng định đăng nhập, sau khi đăng nhập lại xong, họ đc chuyển hướng đến trang đó
            session.set("security-uri", uri);
            
            // chuyển hướng người dùng đến trang đăng nhập "/accout/login?error=" kèm thông báo lỗi mình đặt
            response.sendRedirect("/index/login?error=" + error);
         
            // không chuyển đến controller, dừng xử lý yêu cầu hiện tại
            return false;
        }
        
        // nếu không có các vấn đề trên, trả true, để controller tiếp tục xử lý
        return true;
    }
}
