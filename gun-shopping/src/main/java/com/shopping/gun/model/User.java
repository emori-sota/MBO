package com.shopping.gun.model;

import javax.validation.constraints.*;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.*;

//@Entity
@Component
public class User {
	
	@NotNull
	@Id
	@Size(min = 1, max = 12)
	int id;
	
	@NotNull
	String name;

	
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

}
