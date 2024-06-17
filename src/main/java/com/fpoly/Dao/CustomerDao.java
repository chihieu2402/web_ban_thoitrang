package com.fpoly.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entitys.Customer;

public interface CustomerDao extends JpaRepository<Customer, String> {
	
	List<Customer> findByCustomerID(String customerID);
	
	List<Customer> findByEmail(String email);
}
