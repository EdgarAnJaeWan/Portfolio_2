package com.webproject.population.vo;

import lombok.Data;


public class HouseholdVO {
	
	public String region;
	public String sido;
	public String gugun;
	public int year;
	public int month;
	public int household;
	private int population_male;
	private int population_female;
	
	
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getHousehold() {
		return household;
	}
	public void setHousehold(int household) {
		this.household = household;
	}
	public int getPopulation_male() {
		return population_male;
	}
	public void setPopulation_male(int population_male) {
		this.population_male = population_male;
	}
	public int getPopulation_female() {
		return population_female;
	}
	public void setPopulation_female(int population_female) {
		this.population_female = population_female;
	}
		
}
