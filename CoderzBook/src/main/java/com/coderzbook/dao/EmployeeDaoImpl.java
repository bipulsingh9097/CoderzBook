package com.coderzbook.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coderzbook.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	/*Autowiring the sessionfactory*/
	@Autowired
	private SessionFactory sessionFactory;
	
	
	/*getting logger*/
	private Logger log = Logger.getLogger(EmployeeDao.class);
	
	
	
	public boolean saveEmployee(Employee employee) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Employee e where e.id=:eid");
		query.setParameter("eid", employee.getId());
		List<Employee> list=query.getResultList();
		if (list != null && list.size() > 0) {
			return false;
		}else {
			sessionFactory.getCurrentSession().save(employee);
			return true;
		}
	}

	
	
	public List<Employee> listEmployee() {
		return sessionFactory.getCurrentSession().createQuery("from Employee").list();
	}



	public Employee getEmployeeById(String id) {
		return sessionFactory.getCurrentSession().get(Employee.class, Integer.parseInt(id));
	}



	public void updateEmployee(Employee emp) {
		sessionFactory.getCurrentSession().update(emp);
	}



	public void deleteEmployee(String empId) {
		Query query = sessionFactory.getCurrentSession().createQuery("delete from Employee e where e.id=:eid");
		query.setParameter("eid", Integer.parseInt(empId));
		query.executeUpdate();
	}
	
}/*End of class*/
