package com.mikabank.account.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mikabank.account.model.Customer;
import com.mikabank.account.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;

	// GET CUSTOMER
	@RequestMapping(value = "/getcustomers", method = RequestMethod.GET)
	public ModelAndView GetCustomersList() {
		ModelAndView modelView = new ModelAndView("all-customers");

		List<Customer> listCustomers = customerService.getCustomers();
		modelView.addObject("listcustomer", listCustomers);
		modelView.addObject("customer", new Customer());

		return modelView;
	}
	
	public ModelAndView openAlertPage() {
		ModelAndView modelView2 = new ModelAndView("search-not-found");
		return modelView2;
	}

	// GET CUSTOMER DETAIL BY ID
	@RequestMapping(value = "getcustomerdetail")
	public ModelAndView getCustomerDetail(@RequestParam("customerId") int customerId) {
		ModelAndView modelView = new ModelAndView("customer-profile");		
		
		try {
		Customer fetchedCustomer = customerService.getCustomerById(customerId);		
		modelView.addObject("customerid", fetchedCustomer.getId());
		modelView.addObject("firstname", fetchedCustomer.getFirstName());
		modelView.addObject("lastname", fetchedCustomer.getLastName());
		modelView.addObject("accounttype", fetchedCustomer.getAccountType());
		modelView.addObject("accountno", fetchedCustomer.getAccountNo());
		modelView.addObject("balance", fetchedCustomer.getBalance());
		modelView.addObject("gender", fetchedCustomer.getGender());
		modelView.addObject("email", fetchedCustomer.getEmail());
		modelView.addObject("phoneno", fetchedCustomer.getPhoneNo());
		modelView.addObject("email", fetchedCustomer.getEmail());
		modelView.addObject("cardno", fetchedCustomer.getCardNo());
		modelView.addObject("streetno", fetchedCustomer.getAddress().getStreetNo());
		modelView.addObject("streetname", fetchedCustomer.getAddress().getStreetName());
		modelView.addObject("city", fetchedCustomer.getAddress().getCity());
		modelView.addObject("province", fetchedCustomer.getAddress().getProvince());
		modelView.addObject("postalcode", fetchedCustomer.getAddress().getPostalCode());
		modelView.addObject("country", fetchedCustomer.getAddress().getCountry());


		return modelView;
		}
		catch(Exception e){
			
			return openAlertPage();
		}
		
	}
	
//	// GET CUSTOMER BY CARD NO
//	@RequestMapping(value = "/findcustomer")
//	public ModelAndView GetCustomerbyCardNo(@RequestParam("cardno") int cardNo) {
//		ModelAndView modelView = new ModelAndView("all-customers");
//
//		List<Customer> listCustomers = new ArrayList<Customer>();
//		listCustomers.add(customerService.getCustomerByCardNo(cardNo));
//		modelView.addObject("listcustomer", listCustomers);
//		modelView.addObject("customer", new Customer());
//
//		return modelView;
//	}
	
	// Redirect to search page
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView getCustomerList() {
		ModelAndView modelView = new ModelAndView("search");
		
		List<Customer> listCustomers = customerService.getCustomers();
		modelView.addObject("listcustomer", listCustomers);
		modelView.addObject("customer", new Customer());
		
		return modelView;		
		
	}
	
	
	// GET CUSTOMER BY CARD NO
		@RequestMapping(value = "findcustomer")
		public ModelAndView GetCustomerbyCardNo(@ModelAttribute("customer") Customer cust) {
			ModelAndView modelView = new ModelAndView("all-customers");
			
			int searchNumber = cust.getCardNo();

			List<Customer> listCustomers = new ArrayList<Customer>();
			listCustomers.add(customerService.getCustomerByCardNo(searchNumber));
			modelView.addObject("listcustomer", listCustomers);
			modelView.addObject("customer", new Customer());

			return modelView;
		}

	

	// REDIRECT TO REGISTER PAGE
	@RequestMapping(value = "addcustomer")
	public ModelAndView addCustomer() {
		ModelAndView modelView = new ModelAndView("register");
		modelView.addObject("customer", new Customer());

		return modelView;
	}

	// ADD CUSTOMER
	@RequestMapping(value = "saveCustomer", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("customer") Customer cust) {

		if (customerService.addCustomer(cust)) {
			String str = "redirect:/getcustomerdetail?customerId=" + cust.getId();

			return str;
		} else {
			return "error-page";
		}

	}

	// REDIRECT TO update-customer.jsp AND POPULATE THE FIELD WITH EXISTING DATA
	@RequestMapping(value = "editcustomer")
	public ModelAndView editCustomer(@RequestParam("customerId") int customerId) {
		ModelAndView modelView = new ModelAndView("update-customer");
		Customer fetchedCustomer = customerService.getCustomerById(customerId);
		modelView.addObject("editedcustomer", fetchedCustomer);
		modelView.addObject("customerid", fetchedCustomer.getId());			// used for cancel button
		return modelView;
	}

	// UPDATE CUSTOMER
	@RequestMapping(value = "updatecustomer")
	public String updateCustomer(@ModelAttribute("customer") Customer cust) {
		if (customerService.updateCustomer(cust)) {

			String str = "redirect:/getcustomerdetail?customerId=" + cust.getId();

			return str;

		} else {
			return "error-page";
		}
	}

	// DEPOSIT --------------------------------------------------------------------

	public double oldBalance;

	// REDIRECT TO deposit-withdraw.jsp AND POPULATE THE FIELD WITH EXISTING DATA
	@RequestMapping(value = "deposit")
	public ModelAndView depositBalance(@RequestParam("customerId") int customerId) {
		ModelAndView modelView = new ModelAndView("deposit");
		Customer fetchedCustomer = customerService.getCustomerById(customerId);

		modelView.addObject("editedformbalance", fetchedCustomer);
		modelView.addObject("firstname", fetchedCustomer.getFirstName());
		modelView.addObject("lastname", fetchedCustomer.getLastName());
		modelView.addObject("accounttype", fetchedCustomer.getAccountType());
		modelView.addObject("accountno", fetchedCustomer.getAccountNo());
		modelView.addObject("balance", fetchedCustomer.getBalance());
		modelView.addObject("customerid", fetchedCustomer.getId());		// used for cancel button

		// save old balance and pass it below for calculation
		oldBalance = fetchedCustomer.getBalance();

		return modelView;
	}

	// DEPOSIT BALANCE
	@RequestMapping(value = "depositbalance")
	public String depositBalance(@ModelAttribute("customer") Customer cust) {

		// sum old balance and new balance for deposit transaction
		double newBalance = oldBalance + cust.getBalance();
		cust.setBalance(newBalance);

		if (customerService.updateCustomer(cust)) {

			String str = "redirect:/getcustomerdetail?customerId=" + cust.getId();

			return str;

		} else {
			return "error-page";
		}

	}

	// END OF DEPOSIT
	// -------------------------------------------------------------------------

	// WITHDRAW
	// -------------------------------------------------------------------------------

	// REDIRECT TO withdraw.jsp AND POPULATE THE FIELD WITH EXISTING DATA
	@RequestMapping(value = "withdraw")
	public ModelAndView withdrawBalance(@RequestParam("customerId") int customerId) {
		ModelAndView modelView = new ModelAndView("withdraw");
		Customer fetchedCustomer = customerService.getCustomerById(customerId);

		modelView.addObject("editedformbalance", fetchedCustomer);
		modelView.addObject("firstname", fetchedCustomer.getFirstName());
		modelView.addObject("lastname", fetchedCustomer.getLastName());
		modelView.addObject("accounttype", fetchedCustomer.getAccountType());
		modelView.addObject("accountno", fetchedCustomer.getAccountNo());
		modelView.addObject("balance", fetchedCustomer.getBalance());
		modelView.addObject("customerid", fetchedCustomer.getId());		// used for cancel button

		// save old balance and pass it below for calculation
		oldBalance = fetchedCustomer.getBalance();

		return modelView;
	}

	// WITHDRAW BALANCE
	@RequestMapping(value = "withdrawbalance")
	public String withdrawBalance(@ModelAttribute("customer") Customer cust) {

		// subtract old balance with new balance for withdraw transaction
		double newBalance = oldBalance - cust.getBalance();
		cust.setBalance(newBalance);

		if (customerService.updateCustomer(cust)) {

			String str = "redirect:/getcustomerdetail?customerId=" + cust.getId();

			return str;

		} else {
			return "error-page";
		}

	}

	// END OF WITHDRAW
	// ----------------------------------------------------------------------

	// DELETE CUSTOMER
	@RequestMapping(value = "deletecustomer")
	public String deleteCustomer(@RequestParam("customerId") int customerId) {
		if (customerService.deleteCustomer(customerId)) {

			return "redirect:/getcustomers";
		} else {
			return "error-page";
		}
	}

	// DELETE CUSTOMER THROUGH ADDRESS TABLE (NOT BEING USED)
	@RequestMapping(value = "deletecustomeraddress")
	public String deleteCustomerAddress(@RequestParam("customeraddressId") int addressId) {
		if (customerService.deleteCustomerAddress(addressId)) {

			return "redirect:/getcustomers";
		} else {
			return "error-page";
		}
	}

}
