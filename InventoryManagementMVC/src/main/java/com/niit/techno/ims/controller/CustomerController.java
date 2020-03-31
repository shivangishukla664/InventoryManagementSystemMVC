package com.niit.techno.ims.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.techno.ims.model.Customer;
import com.niit.techno.ims.model.User;
import com.niit.techno.ims.service.CustomerService;

@Controller
@RequestMapping("/customer")  
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value="/showFormcust")    
	public String showFormForAdd(ModelMap theModel)
	{
		Customer thecustomer=new Customer();
		theModel.addAttribute("customer",thecustomer);
	
		return "customer-form"; 
	}
	
	
	@PostMapping(value="/saveCustomer")    
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer)
	{
		customerService.saveCustomer(theCustomer);
		
		return "success";  
	}
	
	
	@GetMapping("/list") // @GetMapping - method level , default GET method
	public String listCustomers(ModelMap theModel) {
	List<Customer> theCustomers = customerService.getCustomers();
	theModel.addAttribute("customers", theCustomers);
	return "profile-customers";
	}

	

}
