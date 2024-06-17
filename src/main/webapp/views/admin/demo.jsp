package com.fpoly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController {
	HttpServletRequest request;

	@RequestMapping(value = "/thongke", method = RequestMethod.GET)
	public String ShowThongke(Model model) {
		model.addAttribute("showPage", "../views/admin/thongke.jsp");
		return "admin";
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String ShowUser(Model model) {
		model.addAttribute("showPage", "../views/admin/user.jsp");
		return "admin";

	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String ShowProduct(Model model) {
		model.addAttribute("showPage", "../views/admin/product.jsp");
		return "admin";

	}

	@GetMapping("/orders")
	public String ShowOders(Model model) {
		model.addAttribute("showPage", "admin/oder.jsp");
		return "admin";

	}

	@GetMapping("/upload")
	public String showupload() {
		return "uploadfile";
	}

}
