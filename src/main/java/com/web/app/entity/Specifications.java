package com.web.app.entity;

import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Specifications")
public class Specifications {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int specifications_id;
    private int floors;
    private double area;
    private double length;
    private double frontage;
    private double bedrooms;
}
