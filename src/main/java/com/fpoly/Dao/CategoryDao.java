package com.fpoly.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fpoly.entitys.Category;

public interface CategoryDao extends JpaRepository<Category, String> {

    List<Category> findByCategoryID(String categoryID);

    List<Category> findByCategoryName(String categoryName);
}
