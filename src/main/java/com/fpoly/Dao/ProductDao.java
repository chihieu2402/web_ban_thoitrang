package com.fpoly.Dao;

import com.fpoly.entitys.Product;

import jakarta.transaction.Transactional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductDao extends JpaRepository<Product, String> {

	@Query("SELECT p FROM Product p WHERE p.createDate = CURRENT_DATE")
	List<Product> findProductsCreatedToday();

	@Query("SELECT p FROM Product p")
	Page<Product> Pagination(Pageable pageable);

	@Query(value = "SELECT TOP 6 * FROM products ORDER BY percentage_discount DESC", nativeQuery = true)
	List<Product> findTop6ByPercentageDiscount();

	@Query(value = "SELECT dbo.DiscountProduct(:price, :percentageDiscount)", nativeQuery = true)
	Float getDiscountedPrice(@Param("price") float price, @Param("percentageDiscount") int percentageDiscount);

	Product findByProductId(String productId);

	@Query("SELECT p FROM Product p WHERE p.productName LIKE %:keyword%")
	List<Product> findByProductNameLike(@Param("keyword") String keyword);

}
