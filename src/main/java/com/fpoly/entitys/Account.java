// Lớp Account
package com.fpoly.entitys;

import java.io.Serializable;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
    @Id
    @Column(name = "Email", columnDefinition = "varchar(50)")
    private String email;

    @Column(name = "Password", columnDefinition = "varchar(20)", nullable = false)
    private String password;

    @Column(name = "Role", columnDefinition = "bit")
    private boolean role;
    
    
    @Column(name="id")
    private String id;

    @OneToOne
    @JoinColumn(name="Email")
    Customer customer;
    
}
