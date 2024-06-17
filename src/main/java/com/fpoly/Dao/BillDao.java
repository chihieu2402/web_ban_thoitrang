package com.fpoly.Dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entitys.Bill;

public interface BillDao extends JpaRepository<Bill, String> {

	
}
