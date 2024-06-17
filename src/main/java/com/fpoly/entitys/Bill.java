package com.fpoly.entitys;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.*;

@Data
@Entity
@Table(name = "Bills")
public class Bill implements Serializable {
    
    @Id
    @Column(name = "BillID")
    private String billID;
    
    @ManyToOne
    @JoinColumn(name = "CustomerID")
    private Customer customer;
    
    @Temporal(TemporalType.DATE)
    @Column(name = "CreateDate")
    private Date createDate = new Date();
    
    @OneToMany(mappedBy = "bill")
    private List<BillDetail> billDetails;
}
