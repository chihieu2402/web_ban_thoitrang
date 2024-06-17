	package com.fpoly.entitys;
	
	import lombok.Data;
	import lombok.NoArgsConstructor;
	
	@Data
	@NoArgsConstructor
	public class CartItem {
	    private Product product;
	    private int quantity;
	
	    public CartItem(Product product, int quantity) {
	        this.product = product;
	        this.quantity = quantity;
	    }
	}
