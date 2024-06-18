package com.fpoly.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entitys.BillDetail;

public interface BillDetailDao extends JpaRepository<BillDetail, String> {

}
