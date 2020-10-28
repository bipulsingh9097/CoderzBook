package com.coderzbook.dao;

import java.util.List;

import com.coderzbook.entity.Employee;

public interface EmployeeDao {

	boolean  saveEmployee(Employee employee);

	List<Employee> listEmployee();

	Employee getEmployeeById(String id);

	void updateEmployee(Employee emp);

	void deleteEmployee(String empId);

}
