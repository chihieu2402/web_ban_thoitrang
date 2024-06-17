package com.fpoly.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fpoly.Dao.AccountDao;
import com.fpoly.Dao.BillDao;
import com.fpoly.Dao.ProductDao;
import com.fpoly.entitys.Account;
import com.fpoly.entitys.Bill;
import com.fpoly.entitys.Product;
import com.fpoly.repositories.ProductRepository;
import com.fpoly.service.ProductService;
import com.fpoly.service.SessionService;
import com.fpoly.service.UploadService;

import jakarta.servlet.ServletContext;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	ProductDao productDao;
	@Autowired
	AccountDao accountDao;
	@Autowired
	ProductService pd;
	@Autowired
	UploadService upload;
	@Autowired
	BillDao billDao;
	@Autowired
	ServletContext app;

	@Autowired
	SessionService session;

	@Autowired
	ProductRepository productRepository;

	List<Account> lAccount;

	List<Product> lProduct;

	@RequestMapping(value = "/thongke", method = RequestMethod.GET)
	public String showThongke(Model model) {
		model.addAttribute("showPage", "../views/admin/thongke.jsp");
		return "admin";
	}

	// User/Account

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public String showUser(@ModelAttribute("user") Account user, Model model) {
		lAccount = accountDao.findAll();
		model.addAttribute("users", lAccount);
		model.addAttribute("showPage", "../views/admin/user.jsp");
		return "admin";
	}

	// Thêm người dùng mới

	@PostMapping("/user/create")
	public String createUser(@ModelAttribute("id") Account account, Model model) {
		if (!accountDao.existsById(account.getId())) {
			accountDao.save(account);
			return "redirect:/admin/users";
		} else {
			model.addAttribute("message", "Id này đã tồn tại !");
		}

		List<Account> users = accountDao.findAll();
		model.addAttribute("users", users);

		return "admin";
	}

	// edit
	@RequestMapping("/user/edit/{id}")
	public String editUser(@PathVariable("id") String id, Model model) {
		Account user = accountDao.findByIdd(id).get(0);
		List<Account> users = accountDao.findAll();
		model.addAttribute("users", users);
		model.addAttribute("user", user);
		model.addAttribute("showPage", "../views/admin/user.jsp");
		return "admin";
	}

	// Cập nhật thông tin người dùng
	@PostMapping("/user/update")
	public String updateUser(@ModelAttribute("user") Account account) {
		accountDao.save(account);
		lAccount = accountDao.findAll();
		return "redirect:/admin/users";
	}

	// Xóa người dùng
	@GetMapping("/user/delete/{id}")
	public String deleteUser(@PathVariable("id") String id) {
		accountDao.deleteById(id);
		return "redirect:/admin/users";
	}

	// oder
	@GetMapping("/orders")
	public String showOrders(Model model) {
		List<Bill> orders = billDao.findAll();
		model.addAttribute("orders", orders); // Corrected attribute name to "orders"
		model.addAttribute("showPage", "../views/admin/oder.jsp");
		return "admin";
	}

	// Product
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String showProduct(Model model) {

		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
		model.addAttribute("showPage", "../views/admin/product.jsp");
		return "admin";
	}

	@RequestMapping("/product/edit/{productId}")
	public String editProduct(@PathVariable("productId") String productId, Model model) {
		Product product = productDao.findById(productId).orElse(null);
		if (product != null) {
			List<Product> products = productDao.findAll();
			model.addAttribute("products", products);
			model.addAttribute("product", product);
			model.addAttribute("showPage", "../views/admin/product.jsp");
		} else {
			model.addAttribute("message", "Product not found!");
			return "redirect:/admin/products";
		}
		return "admin";
	}

//	, @RequestParam("productImage") String img
	@PostMapping("/product/create")
	public String createProduct(@ModelAttribute Product product, Model model) {

		productDao.save(product);
		return "redirect:/admin/products";
	}

	@PostMapping("/product/upload")
	public String upload(@ModelAttribute Product product, @RequestParam("imgP") MultipartFile productImage,Model model) {
		File savedFile = upload.save(productImage, "image");
		String ten = savedFile.getName();
		model.addAttribute("anh", ten);
		System.out.println(ten);

		return "redirect:/admin/products";
	}


	@PostMapping("/product/update")
	public String updateProduct(@ModelAttribute("product") Product product) {
		productDao.save(product);
		lProduct = productDao.findAll();
		return "redirect:/admin/products";
	}

	@PostMapping("/product/delete")
	public String deleteProduct(@RequestParam("productId") String productId) {
		productDao.deleteById(productId);
		return "redirect:/admin/products";
	}

	// tìm kiếm đang lỗi
	@RequestMapping("/product/search")
	public String searchProducts(@RequestParam("keywords") String keywords, Model model) {
		List<Product> products = productDao.findByProductNameLike("%" + keywords + "%");
		model.addAttribute("products", products);
		model.addAttribute("showPage", "../views/admin/product.jsp");
		return "admin";
	}
}
