package com.niit.techno.ims.dao;

import java.util.List;

import com.niit.techno.ims.model.Customer;

public interface CustomerDAO {
	
	public void saveCustomer(Customer theCustomer);
	
	public List<Customer> getCustomers();
	
	

}
