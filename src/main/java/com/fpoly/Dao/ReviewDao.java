package com.fpoly.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fpoly.entitys.Product;
import com.fpoly.entitys.Review;
import java.util.List;


public interface ReviewDao extends JpaRepository<Review, Integer> {
    @Query("SELECT AVG(r.rating) FROM Review r")
    Double findAverageRating();
    
    @Query("SELECT AVG(r.rating) FROM Review r WHERE r.product.id = :productId")
    Double findAverageRatingByProductId(String productId);

    
    List<Review> findByProduct(Product product);
}
