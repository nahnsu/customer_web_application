package com.nahnsu.customers.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nahnsu.customers.entity.Customer;
import com.nahnsu.customers.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
		// add the entities to the model
		theModel.addAttribute("customers", theCustomers);
		// send to the form
		return "list-customers";
	}
	
	@GetMapping("/user")
	public String showUser(@RequestParam("customerId") int theId, Model theModel) {
		List<Customer> theCustomer = new ArrayList();
		theCustomer.add(customerService.getCustomer(theId));
		theModel.addAttribute("customer", theCustomer);
		return "list-user";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);	
		return "customer-form";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId,
									Model theModel) {
		Customer theCustomer = customerService.getCustomer(theId);	
		theModel.addAttribute("customer", theCustomer);			
		return "customer-form";
	}
	
	@GetMapping("/showFormForUser")
	public String showFormForUser(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "user-form";
	}
	
	@GetMapping("showFormForUserUpdate")
	public String showFormForUserUpdate(@RequestParam("customerId") int theId,
									Model theModel) {
		Customer theCustomer = customerService.getCustomer(theId);	
		theModel.addAttribute("customer", theCustomer);			
		return "user-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		customerService.saveCustomer(theCustomer);	
		return "redirect:/customer/list";
	}
	
	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("customer") Customer theCustomer, Model theModel) {
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/user?customerId=" + Integer.toString(theCustomer.getId());
	}
	
	@GetMapping("/showUserLogin")
	public String showUserLogin(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "login";
	}
	
	@PostMapping("/validateUser")
	public String loginUser(@ModelAttribute("customer") Customer theCustomer, Model theModel) {
		List<Customer> allCustomers = customerService.getCustomers();
		for(Customer c : allCustomers) {
			//if they know all the information, redirect them to that user's page
			if(theCustomer.getEmail().equals(c.getEmail())  && theCustomer.getFirstName().equals(c.getFirstName()) && theCustomer.getLastName().equals(c.getLastName())) {
				if(c.getId()==42) {
					return "redirect:/customer/list";
				}
				return "redirect:/customer/user?customerId=" + Integer.toString(c.getId());
			}
		}
		return "failed-login";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		customerService.deleteCustomer(theId);
		return "redirect:/customer/list";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("customerId") int theId) {
		customerService.deleteCustomer(theId);
		return "redirect:/";
	}
	
}










