package com.coderzbook.services;

import com.coderzbook.entity.Admin;

public interface AdminService {

	boolean authentication(Admin admin);

	boolean changePassword(Admin admin,String newpass);
	
}	
