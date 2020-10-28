package com.coderzbook.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.coderzbook.patterns.FactoryInterface;

@Entity
@Table(name = "admin")
public class Admin implements FactoryInterface{

	
	@Id
	@Column(name = "adminId")
	private String adminId;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "password")
	private String password;

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}/*End of admin class*/
