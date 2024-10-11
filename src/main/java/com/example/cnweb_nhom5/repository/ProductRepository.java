package com.example.cnweb_nhom5.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.example.cnweb_nhom5.domain.Product;
import com.example.cnweb_nhom5.domain.User;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>, JpaSpecificationExecutor<Product> {
    Page<Product> findAll(Pageable page);

    Page<Product> findAll(Specification<Product> spec, Pageable page);
    
    Page<Product> findAllByOrderByCreatedDateDesc(Pageable pageable);
    
    Page<Product> findByCategoryId(Long categoryId, Pageable pageable);
}
