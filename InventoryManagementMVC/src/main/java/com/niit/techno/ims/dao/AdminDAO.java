package com.niit.techno.ims.dao;

import com.niit.techno.ims.model.Admin;

public interface AdminDAO {

	public void saveAdmin(Admin theAdmin);
	
	public Admin checkAdmin(Admin theAdmin);
}
