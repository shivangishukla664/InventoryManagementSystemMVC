package com.niit.techno.ims.service;

import com.niit.techno.ims.model.Admin;


public interface AdminService {
	public void saveAdmin(Admin theAdmin);
	
	public Admin checkAdmin(Admin theAdmin);

}
