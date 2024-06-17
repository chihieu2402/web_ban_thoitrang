package com.fpoly.repositories;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fpoly.entitys.Category;
import com.fpoly.entitys.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product,String>{


    @Query("SELECT o FROM Product o WHERE o.productName LIKE ?1")
    Page<Product> findByKeywords(String keywords, Pageable pageable);
    
    @Query("SELECT p FROM Product p")
	Page<Product> Pagination(Pageable pageable);
    
}


