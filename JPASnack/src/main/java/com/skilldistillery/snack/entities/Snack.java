package com.skilldistillery.snack.entities;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Snack {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private Integer calories;
	@Column(name = "sugar_grams")
	private Integer sugar;
	@Column(name = "carbs_grams")
	private Integer carbs;
	@Column(name = "protein_grams")
	private Integer protein;

	private Double price;

	public Snack() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getCalories() {
		return calories;
	}

	public void setCalories(Integer calories) {
		this.calories = calories;
	}

	public Integer getSugar() {
		return sugar;
	}

	public void setSugar(Integer sugar) {
		this.sugar = sugar;
	}

	public Integer getCarbs() {
		return carbs;
	}

	public void setCarbs(Integer carbs) {
		this.carbs = carbs;
	}

	public Integer getprotein() {
		return protein;
	}

	public void setprotein(Integer protein) {
		this.protein = protein;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Snack [id=" + id + ", name=" + name + ", calories=" + calories + ", sugar=" + sugar + ", carbs=" + carbs
				+ ", protein=" + protein + ", price=" + price + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Snack other = (Snack) obj;
		return id == other.id;
	}

}