package com.app.assistantsproject.service;

import com.app.assistantsproject.entity.Product;
import com.app.assistantsproject.exception.NotFoundException;
import com.app.assistantsproject.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

  private final ProductRepository productRepository;

  @Autowired
  public ProductServiceImpl(ProductRepository productRepository) {
    this.productRepository = productRepository;
  }

  @Override
  public List<Product> getMainProducts() {
    return productRepository.findAllByType(Product.Type.MAIN);
  }

  @Override
  public List<Product> getAdditionalProducts() {
    return productRepository.findAllByType(Product.Type.ADDITIONAL);
  }

  @Override
  public Product getProductById(int id) {
    return productRepository.findById(id).orElseThrow(() ->
            new NotFoundException("Product with id %d not found".formatted(id)));
  }
}
