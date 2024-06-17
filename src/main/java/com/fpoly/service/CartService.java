package com.fpoly.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fpoly.entitys.CartItem;
import com.fpoly.entitys.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CartService {
    private List<CartItem> cart = new ArrayList<>();

    public List<CartItem> getCart() {
        return cart;
    }

    public void addToCart(Product product, int quantity) {
        for (CartItem item : cart) {
            if (item.getProduct().getProductId().equals(product.getProductId())) {
                item.setQuantity(item.getQuantity() + quantity);
                return;
            }
        }
        cart.add(new CartItem(product, quantity));
    }

    public void updateCartItem(String productId, int quantity) {
        for (CartItem item : cart) {
            if (item.getProduct().getProductId().equals(productId)) {
                item.setQuantity(quantity);
                return;
            }
        }
    }

    public void removeCartItem(String productId) {
        cart.removeIf(item -> item.getProduct().getProductId().equals(productId));
    }

    public float getTotalPrice() {
        return (float) cart.stream().mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity()).sum();
    }
    
}

