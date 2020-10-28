package com.coderzbook.services;

import java.util.List;

import com.coderzbook.entity.Employee;

public interface EmployeeService {

	boolean  saveEmployee(Employee employee);

	List<Employee> listEmployee();
	
	Employee getEmployeeById(String id);

	void updateEmployee(Employee emp);

	void deleteEmployee(String empId);

}
