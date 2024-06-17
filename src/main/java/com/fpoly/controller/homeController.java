package com.fpoly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.fpoly.Dao.ProductDao;
import com.fpoly.entitys.Product;
import com.fpoly.repositories.ProductRepository;
import com.fpoly.service.ProductService;
import com.fpoly.service.SessionService;

import jakarta.servlet.ServletContext;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("index")
public class homeController {

	@Autowired
	private ProductDao dao;

	@Autowired
	private ProductService productService;

	@Autowired
	ProductRepository productRepository;

	@Autowired
	SessionService session;

	@Autowired
	ServletContext app;

	@RequestMapping(value = "/layout", method = RequestMethod.GET)
	public String search(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 12);
		Page<Product> page = dao.Pagination(pageable);
		model.addAttribute("page", page);
		model.addAttribute("products", page.getContent());

		List<Product> findtop6 = dao.findTop6ByPercentageDiscount();
		model.addAttribute("findtop6", findtop6);

		// Flash Sale
		findtop6.forEach(product -> {
			product.setOriginalPrice(product.getPrice());
			Float discountedPrice = dao.getDiscountedPrice(product.getPrice(), product.getPercentageDiscount());
			BigDecimal roundedPrice = new BigDecimal(discountedPrice).setScale(3, RoundingMode.CEILING);
			product.setPrice(roundedPrice.floatValue());
		});

		List<Product> newProducts = dao.findProductsCreatedToday();
		model.addAttribute("newProducts", newProducts);

		return "index";
	}

	@RequestMapping(value = "search", method = RequestMethod.POST)
	public String search(@RequestParam("keywords") String keywords, @RequestParam("p") Optional<Integer> p,
			Model model) {
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = productRepository.findByKeywords("%" + keywords + "%", pageable);
		System.out.println(page);
		model.addAttribute("page", page);
		return "index";
	}

}
