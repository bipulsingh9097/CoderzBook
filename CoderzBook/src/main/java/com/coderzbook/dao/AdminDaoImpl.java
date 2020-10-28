package com.coderzbook.dao;

import java.util.List;

import javax.persistence.Query;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coderzbook.entity.Admin;

@Repository
public class AdminDaoImpl implements AdminDao {

	private Logger logger = Logger.getLogger(AdminDaoImpl.class);
	@Autowired
	private SessionFactory sessionFactory;
	
	
	/*Authenticate the Admin credentials and returns true or false as per result*/
	public boolean authentication(Admin admin) {
		Query query = sessionFactory.getCurrentSession().createQuery("from Admin a where a.adminId=:id and a.password=:pass");
		query.setParameter("id", admin.getAdminId());
		query.setParameter("pass", admin.getPassword());
		@SuppressWarnings("unchecked")
		List<Admin> list = query.getResultList();
		if (list != null && list.size() > 0) {
			return true;
		}else {
			return false;
		}
		
	}
	
	
	
	/*Change current password to new password if valid*/
	public boolean changePassword(Admin admin,String newpass) {
		Query query = sessionFactory.getCurrentSession().createQuery("select password from Admin a where a.adminId=:id and a.password=:pass ");
		query.setParameter("id", admin.getAdminId());
		query.setParameter("pass", admin.getPassword());
		@SuppressWarnings("unchecked")
		List<Admin> list = query.getResultList();
		logger.info("Current Password in DAO :"+list);
		if (list != null && list.size() > 0) {
			admin.setPassword(newpass);
			sessionFactory.getCurrentSession().update(admin);
			return true;
		}else {
			return false;
		}
	}




}
