package com.fpoly.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.fpoly.Dao.ProductDao;
import com.fpoly.entitys.Product;

import com.fpoly.service.CartService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;

	@Autowired
	ProductDao productDAO;
	@Autowired
	HttpSession session;

	@GetMapping
	public String viewCart(Model model) {
		model.addAttribute("cart", cartService.getCart());
		model.addAttribute("totalPrice", cartService.getTotalPrice());
		return "Giohang";
	}

	@GetMapping("/thanhtoan")
	public String viewtthanhtoan(Model model) {
		model.addAttribute("cart", cartService.getCart());
		model.addAttribute("totalPrice", cartService.getTotalPrice());
		return "Thanhtoan";
	}

	@PostMapping("/add")
	public String addToCart(@RequestParam String productId, @RequestParam int quantity) {
		Product product = productDAO.findByProductId(productId);
		if (product != null) {
			cartService.addToCart(product, quantity);
		}
		return "redirect:/cart";
	}

	@PostMapping("/update")
	public String updateCartItem(@RequestParam String productId, @RequestParam int quantity) {
		cartService.updateCartItem(productId, quantity);
		return "redirect:/cart";
	}

	@PostMapping("/remove")
	public String removeCartItem(@RequestParam String productId) {
		cartService.removeCartItem(productId);
		return "redirect:/cart";
	}
	@RequestMapping(value = "/sort", method = RequestMethod.GET)
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		String fieldName = field.orElse("price");
		Direction direction = Direction.DESC;
		if ("price".equals(fieldName)) {
			Direction currentDirection = (Direction) session.getAttribute("priceDirection");
			if (currentDirection == null || currentDirection == direction.ASC) {
				direction = Direction.DESC;
			} else {
				direction = Direction.ASC;
			}
			session.setAttribute("priceDirection", direction);
		}

		Sort sort = Sort.by(direction, fieldName);
		model.addAttribute("field", fieldName.toUpperCase());
		List<Product> items = productDAO.findAll(sort);
		model.addAttribute("items", items);
		return "Giohang";
	}
}
