package com.mikabank.account.service;

import java.util.List;

import com.mikabank.account.model.Address;
import com.mikabank.account.model.Customer;

public interface CustomerService {
	
	public boolean addCustomer(Customer cust); // CREATE
	
	public List<Customer> getCustomers();	// READ
	
	public Customer getCustomerByCardNo(int cardNo); // READ
	
	public Customer getCustomerById(int custId); 	//READ
	
	public Address getCustomerAddressById(int customeraddressId); // READ
	
	public boolean updateCustomer(Customer cust);	// UPDATE
	
	public boolean deleteCustomer(int custId); 		// DELETE
	
	public boolean deleteCustomerAddress(int customeraddressId); // DELETE

}
