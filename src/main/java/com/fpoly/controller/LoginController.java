package com.fpoly.controller;

import java.util.List;
import java.util.Optional;

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
@RequestMapping("index")
public class LoginController {

	@Autowired
	AccountDao dao;

	@Autowired
	SessionService session;

	List<Account> laccount;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(Model model) {
		laccount = dao.findAll();
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String checkLogin(@RequestParam("user") Optional<String> username,
			@RequestParam("password") Optional<String> password, Model model) {
		String email = username.orElse(null);
		String pw = password.orElse(null);
		if (email.isBlank() || pw.isBlank()) {
			model.addAttribute("mes", "Email và password không được trống");
		} else {
			Account user = (Account) dao.findByEmail(email);// note
			if (user == null) {
				model.addAttribute("mes", "Tài khoản không tồn tại");
			} else {
				if (user.getPassword().equals(pw)) {
					session.set("userSes", user);
					model.addAttribute("mes", "Đăng nhập thành công!");
					if (user.isRole()) {
						return "redirect:/admin/thongke";
					} else {
						return "redirect:/index/layout";
					}
				} else {
					model.addAttribute("mes", "Email hoặc mật khẩu không chính xác");
				}
			}
		}
//		model.addAttribute("mes", laccount);
//		if(user.isBlank()||pw.isBlank()) {
//			model.addAttribute("mes", "Email và password không được trống");
//		} else {
//			for(Account acc : laccount) {
//				if(acc.getEmail().equals(user)) {
//					if(acc.getPassword().equals(pw)){
//						session.set("userSession", user);
//						boolean role = dao.getById(user).isRole();
//						System.out.println(role);
//						if(role==true) {
//							return "redirect:/admin/thongke";
//						} else {
//							return "redirect:/index/layout";
//						}
//					} else {
//						model.addAttribute("mes", "Sai mật khẩu");
//						break;
//					}
//				} else {
//					model.addAttribute("mes", "Tài khoản không tồn tại");
//				}
//			}
//		}
		return "login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		Account user = session.get("userSes");
		if (user != null) {
			session.remove("userSes");
		}
		return "redirect:/index/layout";
	}

}
