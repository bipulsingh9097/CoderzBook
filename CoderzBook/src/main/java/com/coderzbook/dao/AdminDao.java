package com.coderzbook.dao;

import com.coderzbook.entity.Admin;

public interface AdminDao {

	boolean authentication(Admin admin);


	boolean changePassword(Admin admin,String newpas);

}
