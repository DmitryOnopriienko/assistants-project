package com.app.assistantsproject.controller;

import com.app.assistantsproject.entity.Product;
import com.app.assistantsproject.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RestTestController {

  @Autowired
  private ProductRepository productRepository;

  @GetMapping
  public List<Product> test() {
    return productRepository.findAll();
  }
}
