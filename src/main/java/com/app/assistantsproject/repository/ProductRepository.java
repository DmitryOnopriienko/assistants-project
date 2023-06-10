package com.app.assistantsproject.repository;

import com.app.assistantsproject.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

  List<Product> findAllByType(Product.Type type);
}
