package com.niit.techno.ims.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.techno.ims.model.Customer;
import com.niit.techno.ims.model.User;
import com.niit.techno.ims.dao.CustomerDAO;


@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);

	}
	
	@Transactional
	public List<Customer> getCustomers()
	{
		return customerDAO.getCustomers();
	}
	
	
}
