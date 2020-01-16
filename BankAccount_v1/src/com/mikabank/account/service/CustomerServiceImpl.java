package com.mikabank.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mikabank.account.dao.CustomerDao;
import com.mikabank.account.model.Address;
import com.mikabank.account.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	CustomerDao customerDao;
	
	List<Customer> customers;

	public CustomerServiceImpl() {
		
	}
	
	//INSERT CUSTOMER
	@Override
	public boolean addCustomer(Customer cust) {
		return customerDao.insertCustomer(cust) > 0;
	}

	//GET CUSTOMER
	@Override
	public List<Customer> getCustomers() {
		
		return customerDao.getCustomers();
	}

	//GET CUSTOMER BY CARD NO
	@Override
	public Customer getCustomerByCardNo(int cardNo) {
		return customerDao.getCustomerByCardNo(cardNo);
	}

	//GET CUSTOMER BY ID
	@Override
	public Customer getCustomerById(int custId) {
		return customerDao.getCustomerById(custId);
	}
	
	// GET ADDRESS BY ID
	@Override
	public Address getCustomerAddressById(int customeraddressId) {
		return customerDao.getCustomerAddressById(customeraddressId);
	}

	//UPDATE CUSTOMER
	@Override
	public boolean updateCustomer(Customer cust) {
		return customerDao.updateCustomer(cust);
	}

	//DELETE CUSTOMER
	@Override
	public boolean deleteCustomer(int custId) {
		return customerDao.deleteCustomer(custId);
	}
	
	// DELETE CUSTOMER THROUGH ADDRESS TABLE
	@Override
	public boolean deleteCustomerAddress(int customerAddressId) {
		return customerDao.deleteCustomerAddress(customerAddressId);
		
	}
			

}
