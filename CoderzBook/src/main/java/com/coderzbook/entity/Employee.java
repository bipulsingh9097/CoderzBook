package com.coderzbook.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Arrays;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.coderzbook.patterns.FactoryInterface;


/**
 * The persistent class for the employee database table.
 * 
 */

@Entity
@Table(name = "employee")
public class Employee implements FactoryInterface {

	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "name")
	private String name;

	@Column(name = "password")
	private char[] password;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "dob")
	private Date dob;
	
	@Column(name = "doj")
	private Date doj;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "designation")
	private String designation;
	
	@Column(name = "department")
	private String department;
	
	@Column(name = "mobile")
	private String mobile;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "maritalStatus")
	private String maritalStatus;

	@Column(name = "currentProject")
	private String currentProject;
	
	@Column(name = "team")
	private String team;
	
	@Column(name = "status")
	private String status;
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the password
	 */
	public char[] getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(char[] password) {
		this.password = password;
	}

	/**
	 * @return the dob
	 */
	public Date getDob() {
		return dob;
	}

	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob) {
		this.dob = dob;
	}


	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}

	/**
	 * @return the department
	 */
	public String getDepartment() {
		return department;
	}

	/**
	 * @param department the department to set
	 */
	public void setDepartment(String department) {
		this.department = department;
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}

	/**
	 * @param maritalStatus the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	/**
	 * @return the currentProject
	 */
	public String getCurrentProject() {
		return currentProject;
	}

	/**
	 * @param currentProject the currentProject to set
	 */
	public void setCurrentProject(String currentProject) {
		this.currentProject = currentProject;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDoj() {
		return doj;
	}

	public void setDoj(Date doj) {
		this.doj = doj;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", password=" + Arrays.toString(password) + ", email=" + email
				+ ", dob=" + dob + ", doj=" + doj + ", gender=" + gender + ", designation=" + designation
				+ ", department=" + department + ", mobile=" + mobile + ", address=" + address + ", maritalStatus="
				+ maritalStatus + ", currentProject=" + currentProject + ", team=" + team + ", status=" + status + "]";
	}
	
	
}