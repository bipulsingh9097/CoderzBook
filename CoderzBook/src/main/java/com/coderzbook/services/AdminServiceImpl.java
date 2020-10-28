package com.coderzbook.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderzbook.dao.AdminDao;
import com.coderzbook.entity.Admin;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	
	@Transactional
	public boolean authentication(Admin admin) {
		return adminDao.authentication(admin);
	}

	@Transactional
	public boolean changePassword(Admin admin,String newpass) {
		return adminDao.changePassword(admin,newpass);
	}

}
