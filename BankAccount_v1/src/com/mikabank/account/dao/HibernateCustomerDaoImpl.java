package com.mikabank.account.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mikabank.account.model.Address;
import com.mikabank.account.model.Customer;

@Repository
public class HibernateCustomerDaoImpl implements CustomerDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int insertCustomer(Customer cust) {
		sessionFactory.getCurrentSession().save(cust.getAddress());
		sessionFactory.getCurrentSession().save(cust);
		
		return 1;
	}

	@Override
	public List<Customer> getCustomers() {
		return getSession().createQuery("from Customer", Customer.class).list();
	}

	@Override
	public Customer getCustomerByCardNo(int cardNo) {
		return getSession().createQuery("from Customer where cardNo = " + cardNo, Customer.class).uniqueResult();
	}

	@Override
	public Customer getCustomerById(int custId) {
		return getSession().get(Customer.class, custId);
	}
	
	
	@Override
	public Address getCustomerAddressById(int customeraddressId) {
		return getSession().get(Address.class, customeraddressId);
	}

	@Override
	public boolean updateCustomer(Customer cust) {
		getSession().update(cust.getAddress());
		getSession().update(cust);
		return true;
	}

	@Override
	public boolean deleteCustomer(int custId) {
		Customer fetchedCustomer = getCustomerById(custId);
		getSession().delete(fetchedCustomer);
		 
		return true;
	}
	
	@Override
	public boolean deleteCustomerAddress(int customerAddressId) {
		Address fetchedCustomerAddress = getCustomerAddressById(customerAddressId);
		getSession().delete(fetchedCustomerAddress);
		
		return true;
	}
	
	//GET SESSION
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	

	

}
