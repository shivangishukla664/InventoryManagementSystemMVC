package com.niit.techno.ims.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.techno.ims.dao.AdminDAO;
import com.niit.techno.ims.model.Admin;
import com.niit.techno.ims.model.User;


@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Transactional
	public void saveAdmin(Admin theAdmin) {
		adminDAO.saveAdmin(theAdmin);

	}

	@Transactional
	public Admin checkAdmin(Admin theAdmin) {
		return adminDAO.checkAdmin(theAdmin);
	}

}
