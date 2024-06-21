package com.fpoly.service;

import org.springframework.stereotype.Service;


import com.fpoly.entitys.CartItem;
import com.fpoly.entitys.Product;

import java.util.ArrayList;
import java.util.List;


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

