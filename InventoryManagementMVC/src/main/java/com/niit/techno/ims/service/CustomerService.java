package com.niit.techno.ims.service;

import java.util.List;

import com.niit.techno.ims.model.Customer;

public interface CustomerService {
	
	public void saveCustomer(Customer theCustomer);

	public List<Customer> getCustomers();
	
}
