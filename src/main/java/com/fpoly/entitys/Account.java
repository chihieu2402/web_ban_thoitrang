// Lớp Account
package com.fpoly.entitys;

import java.io.Serializable;

import org.hibernate.validator.constraints.UniqueElements;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String id;
    
   
    @Column(name="email",nullable = false)
    private String email;

    @Column(name = "Password", columnDefinition = "varchar(20)", nullable = false)
    private String password;

    @Column(name = "Role", columnDefinition = "bit")
    private boolean role;

    @OneToOne
    @JoinColumn(name="id")
    Customer customer;
    
}
