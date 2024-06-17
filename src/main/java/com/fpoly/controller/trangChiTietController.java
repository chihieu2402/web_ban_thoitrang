package com.fpoly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.Dao.ProductDao;
import com.fpoly.Dao.ReviewDao;
import com.fpoly.entitys.Product;
import com.fpoly.entitys.Review;

@Controller
@RequestMapping("/detail")
public class trangChiTietController {
	@Autowired
	ProductDao productdao;

	@Autowired
	ReviewDao reviewdao;

	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String DetailProduct(@PathVariable("id") String id, Model model) {

		Double SaoTB = reviewdao.findAverageRatingByProductId(id);
		model.addAttribute("SaoTB", SaoTB);

		Product productDt = productdao.findByProductId(id);
		model.addAttribute("detailItem", productDt);

		List<Review> Listreview = reviewdao.findByProduct(productDt);
		model.addAttribute("lreview", Listreview);

		double giagoc = productDt.getPrice();
		double phantramgiam = productDt.getPercentageDiscount();
		double giadagiam = (giagoc * (100 - phantramgiam) / 100);
		String giaCGdinhdang = String.format("%.2f", giadagiam);
		model.addAttribute("giaDaGiam", giaCGdinhdang);

		return "trangchitiet";
	}

	@RequestMapping(value = "/product/{id}", method = RequestMethod.POST)
	public String DanhGia(Review review, @RequestParam("ratingA") int rating, Model model,
			@PathVariable("id") String id) {
		review.setRating(rating);

		reviewdao.save(review);
		System.out.println(rating);

//		kệ nó đi
		Double SaoTB = reviewdao.findAverageRatingByProductId(id);
		model.addAttribute("SaoTB", SaoTB);

		Product productDt = productdao.findByProductId(id);
		model.addAttribute("detailItem", productDt);

		List<Review> Listreview = reviewdao.findByProduct(productDt);
		model.addAttribute("lreview", Listreview);

		double giagoc = productDt.getPrice();
		double phantramgiam = productDt.getPercentageDiscount();
		double giadagiam = (giagoc * (100 - phantramgiam) / 100);
		String giaCGdinhdang = String.format("%.2f", giadagiam);
		model.addAttribute("giaDaGiam", giaCGdinhdang);
		return "redirect:/detail/product/{id}";
	}

}
