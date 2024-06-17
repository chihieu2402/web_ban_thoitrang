package com.fpoly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.Dao.AccountDao;
import com.fpoly.entitys.Account;
import com.fpoly.service.SessionService;

@Controller
@RequestMapping("/index")
public class SignUpController {
	@Autowired
	AccountDao dao;
	
	@Autowired
	SessionService session;

	List<Account> laccount;

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String show() {
		return "signup";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String create(Model model, @RequestParam("user") String email, @RequestParam("password") String pw,
			@RequestParam("passwordconfirm") String pwconfirm) {
		Account user = session.get("userSes");
		if(user!=null) {
			session.remove("userSes");
		}
		if (email.isBlank()||pw.isBlank()||pwconfirm.isBlank()) {
			model.addAttribute("mes", "Vui lòng điền đầy đủ thông tin");
		} else {
			laccount = dao.findAll();
			for (Account acc : laccount) {
				if (acc.getEmail().equals(email)) {
					model.addAttribute("mes", "Email đã tồn tại");
					return "signup";
				} else if (!pw.equals(pwconfirm)){
					model.addAttribute("mes", "Mật khẩu không trùng khớp");
					return "signup";
				} else {
					Account a = new Account();
					a.setEmail(email);
					a.setPassword(pw);
					a.setRole(false);
					a.setId(null);
					dao.save(a);
					model.addAttribute("mes", "Đăng kí thành công!");
				}
			}
		}
		return "signup";
	}

}
