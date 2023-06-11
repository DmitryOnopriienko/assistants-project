package com.app.assistantsproject.service;

import com.app.assistantsproject.entity.Product;

import java.util.List;

public interface ProductService {
  List<Product> getMainProducts();

  List<Product> getAdditionalProducts();

  Product getProductById(int id);
}
