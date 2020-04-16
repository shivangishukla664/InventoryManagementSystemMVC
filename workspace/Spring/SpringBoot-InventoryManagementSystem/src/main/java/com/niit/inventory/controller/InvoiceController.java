package com.niit.inventory.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.inventory.model.Customer;
import com.niit.inventory.model.Invoice;
import com.niit.inventory.model.Order1;
import com.niit.inventory.model.Product;
import com.niit.inventory.services.CustomerService;
import com.niit.inventory.services.InvoiceService;
import com.niit.inventory.services.OrderService;

@Controller
public class InvoiceController {
	
	@Autowired
	private InvoiceService service;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CustomerService customerService;

	
	
	@RequestMapping("/view_invoice")
	public String viewInvoiceToCustomer(Model model)
	{
		List<Invoice> listInvoice=service.listAll();
		model.addAttribute("listInvoice",listInvoice);
		return "view_Invoice";
	}
	
	
	@RequestMapping("/showInvoice")
	public ModelAndView showInvoicePage(@RequestParam("order_id") int order_id) {
	ModelAndView mav = new ModelAndView("generate-invoice");
	Order1 order1 = orderService.get(order_id);
	mav.addObject("order1", order1);
	
		
	return mav;
	}
	
	

	@RequestMapping(value = "/saveInvoice", method = RequestMethod.POST)
	public String saveInvoice(HttpServletRequest request,@ModelAttribute("order1") Order1 order1) {
		ModelAndView model=null;
		
		//Order1 d1=(Order1)request.getAttribute("date1");
		String n=request.getParameter("name");
		String p=request.getParameter("price");
		String p1=request.getParameter("price1");
		
		Invoice invoice=new Invoice(); 
		invoice.setOrder1(order1);
		invoice.setDate(new Date());
		invoice.setDate(new Date());
		invoice.setName(n);
		invoice.setPrice(p);
		invoice.setPrice1(p1);
		service.save(invoice);

	return "redirect:/view_order";
	}

}
