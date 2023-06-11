package com.app.assistantsproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "product")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Integer id;

  private String title;

  @Enumerated(EnumType.STRING)
  private Type type;

  private String price;

  @Column(name = "short_description")
  private String shortDescription;

  @Column(name = "inner_description")
  private String innerDescription;

  @Column(name = "assistance_list")
  private String assistanceList;

  public enum Type {
    MAIN,
    ADDITIONAL
  }
}
