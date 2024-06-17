package com.fpoly.utils;

import com.fpoly.Dao.ProductDao;
import com.fpoly.entitys.Product;
import com.fpoly.service.ProductService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class ProductImpl implements ProductService {
    @Autowired
    private ProductDao dao;

    
    private List<Product> cart = new ArrayList<>();

//	@Override
//	public Product findById(String id) {
//		return dao.findById(id).get();
//	}
    
    @Override
    public List<Product> findAll() {
        return dao.findAll();
    }

    @Override
    public List<Product> findProductsCreatedToday() {
        return dao.findProductsCreatedToday();
    }

    @Override
    public void add(String id) {
        Optional<Product> optionalProduct = dao.findById(id);
        if (optionalProduct.isPresent()) {
            
        }
    }

    @Override
    public List<Product> getCartItems() {
        return cart;
    }

    @Override
    public void addToCart(String productId) {
        Optional<Product> optionalProduct = dao.findById(productId);
        optionalProduct.ifPresent(cart::add);
        
    }

    @Override
    public void removeFromCart(String productId) {
        cart.removeIf(product -> product.getProductId().equals(productId));
    }
    @Override
    public void updateCart(String productId, int quantity) {
    	

    }

}
