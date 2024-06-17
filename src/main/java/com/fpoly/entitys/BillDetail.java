package com.fpoly.entitys;

import lombok.Data;

import java.io.Serializable;

import jakarta.persistence.*;

@Data
@Entity
@Table(name = "BillDetails")
public class BillDetail implements Serializable {
    
    @Id
    @Column(name = "BillDetailID")
    private String billDetailID;
    
    @ManyToOne
    @JoinColumn(name = "BillID")
    private Bill bill;
    
    @ManyToOne
    @JoinColumn(name = "ProductID")
    private Product product;
    
    @Column(name = "TotalPrice")
    private Double totalPrice;
    
    @Column(name = "QuantityBuy")
    private Integer quantityBuy;
}
