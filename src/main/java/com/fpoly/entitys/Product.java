package com.fpoly.entitys;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "Products")
public class Product implements Serializable {

    @Id
    @Column(name = "ProductID")
    private String productId;
    
    @Column(name = "ProductName", columnDefinition = "nvarchar(50)", nullable = false)
    private String productName;
    
    @Column(name = "Content",columnDefinition = "nvarchar(50)", nullable = false)
    private String content;
    
    @Column(name = "Price", nullable = false)
    private float price;
    
    @Column(name = "CreateDate")
    @Temporal(TemporalType.DATE)
    private Date createDate;
    
    @ManyToOne
    @JoinColumn(name = "CategoryID", referencedColumnName = "CategoryID")
    private Category category;
    
    @Column(name = "Image")
    private String image;
    
    @Column(name = "Image1")
    private String image1;
    
    @Column(name = "Image2")
    private String image2;
    
    @Column(name = "Image3")
    private String image3;
    
    @Column(name = "Likes")
    private int likes;
    
    @Column(name = "Sold")
    private int sold;
    
    @Column(name = "Quantity")
    private int quantity;
    
    @Column(name = "PercentageDiscount")
    private int percentageDiscount;
    
    @Column(name = "Condition")
    private boolean Condition;

    @Column(name = "Note", columnDefinition = "nvarchar(255)")
    private String Note;
    
    @Transient
    private float originalPrice; 
    
    @OneToMany(mappedBy = "product")
    private List<BillDetail> billDetails;
    
    @OneToMany(mappedBy = "product") 
    private List<Review> review;
}

