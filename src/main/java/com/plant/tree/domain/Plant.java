package com.plant.tree.domain;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Plant {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "plantName")
	private String plantName;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "imageName")
	private String imageName;
	
	@Column(name = "plantQuantity")
	private String plantQuantity;
	
	@Column(name = "plantCategory")
	private String plantCategory;
	
	@Column(name = "price")
	private BigDecimal price;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlantName() {
		return plantName;
	}

	public void setPlantName(String plantName) {
		this.plantName = plantName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getPlantQuantity() {
		return plantQuantity;
	}

	public void setPlantQuantity(String plantQuantity) {
		this.plantQuantity = plantQuantity;
	}

	public String getPlantCategory() {
		return plantCategory;
	}

	public void setPlantCategory(String plantCategory) {
		this.plantCategory = plantCategory;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	
	

}
