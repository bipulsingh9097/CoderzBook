package com.coderzbook.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderzbook.dao.EmployeeDao;
import com.coderzbook.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Transactional
	public boolean saveEmployee(Employee employee) {
		return employeeDao.saveEmployee(employee);
	}

	@Transactional
	public List<Employee> listEmployee() {
		return employeeDao.listEmployee();
	}

	@Transactional
	public Employee getEmployeeById(String id) {
		return employeeDao.getEmployeeById(id);
	}

	@Transactional
	public void updateEmployee(Employee emp) {
		employeeDao.updateEmployee(emp);
	}

	@Transactional
	public void deleteEmployee(String empId) {
		employeeDao.deleteEmployee(empId);
		
	}

}
