package com.app.assistantsproject.controller;

import com.app.assistantsproject.service.IndexPageService;
import com.app.assistantsproject.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MainController {

  private final IndexPageService indexPageService;

  private final ProductService productService;

  @Autowired
  public MainController(IndexPageService indexPageService, ProductService productService) {
    this.indexPageService = indexPageService;
    this.productService = productService;
  }

  @GetMapping({"/", "/index"})
  public String index(Model model) {
    model.addAttribute("workers", indexPageService.getWorkers());
    model.addAttribute("assistanceList", indexPageService.getAssistance());
    return "index";
  }

  @GetMapping("/services")
  public String services(Model model) {
    model.addAttribute("mainProducts", productService.getMainProducts());
    model.addAttribute("additionalProducts", productService.getAdditionalProducts());
    return "services";
  }

  @GetMapping("/info/{id}")
  public String info(@PathVariable int id, Model model) {
    model.addAttribute("product", productService.getProductById(id));
    return "info";
  }
}
