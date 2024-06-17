package com.fpoly.entitys;

import lombok.Data;


import java.io.Serializable;
import java.util.List;

import jakarta.persistence.*;

@Data
@Entity
@Table(name = "Customers")
public class Customer implements Serializable {

    @Id
    @Column(name = "CustomerID")
    private String customerID;
    
    @Column(name = "CustomerName", columnDefinition = "nvarchar(50)")
    private String customerName;
    
    @Column(name = "PhoneNumber")
    private String phoneNumber;
    
    @Column(name = "Address", columnDefinition = "nvarchar(50)")
    private String address;
    
    @Column(name = "Email")
    private String email;
    
    @Column(name = "Age")
    private Integer age;
    
    @OneToOne(mappedBy = "customer")
    private Account account;
    
    @OneToMany(mappedBy = "customer")
    private List<Bill> bills;
    
    @OneToMany(mappedBy = "customer")
    private List<Review> review;
}
