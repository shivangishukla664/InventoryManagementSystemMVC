package com.niit.techno.ims.controller;

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

import com.niit.techno.ims.model.Admin;
import com.niit.techno.ims.model.User;
import com.niit.techno.ims.service.AdminService;


@Controller
@RequestMapping("/admin")  
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/showForm")    //@RequestMapping using in the method level ,it has default GET method
	public String showFormForAdd(ModelMap theModel)
	{
		
	
		return "welcome-admin-home";  //return model + view name
	}
	
	
	@PostMapping(value="/saveAdmin")    
	public String saveAdmin(@ModelAttribute("admin") Admin theAdmin)
	{
		adminService.saveAdmin(theAdmin);
		
		return "redirect:/admin/list";  
	}
	
	
	
	@GetMapping("/loginForm")    
	public String showLoginForm(Model theModel)
	{
		Admin theAdmin=new Admin();
		theModel.addAttribute("user",theAdmin);
	
		return "admin-form"; 
	}
	
	@RequestMapping(value = "/loginAdmin",  method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView processLogin(@ModelAttribute Admin theAdmin) {
		Admin usr = adminService.checkAdmin(theAdmin);
		ModelAndView model = null;
		if (usr == null) {
			model = new ModelAndView("admin-form");
			model.addObject("error", "Invalid Username or Password");
		} else {
			model = new ModelAndView("welcome-customer-home");
			model.addObject("usr", usr);
			//model.addObject("usr", usr.getEmail());
		}
		return model;
	}


	
}
