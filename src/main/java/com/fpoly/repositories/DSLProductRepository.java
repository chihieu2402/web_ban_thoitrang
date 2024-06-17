package com.fpoly.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fpoly.entitys.Category;
import com.fpoly.entitys.Product;

//@Repository
public interface DSLProductRepository extends JpaRepository<Product,String>{
	
		// Derived Query Methods
		// Cú pháp : Subject + Predicate + Modifiers
		// tham khảo : 
		// https://docs.spring.io/spring-data/jpa/reference/repositories/query-keywords-reference.html#appendix.query.method.subject
		
	

}
