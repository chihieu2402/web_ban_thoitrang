package com.fpoly.service;

import com.fpoly.entitys.Product;
import com.fpoly.repositories.ProductRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public interface ProductService {

	List<Product> findAll();

	List<Product> findProductsCreatedToday();

	void add(String id);

	List<Product> getCartItems();

	void addToCart(String productId);

	void removeFromCart(String productId);

	void updateCart(String productId, int quantity);
}