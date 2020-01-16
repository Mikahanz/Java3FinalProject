package com.mikabank.account.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "first_name")	// column name of the database
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "phone_no")
	private String phoneNo;
	
	@Column(name = "account_type")
	private String accountType;
	
	@Column(name = "account_no")
	private int accountNo;
	
	@Column(name = "balance")
	private double balance;
	
	@Column(name = "card_no")
	private int cardNo;
	
	@OneToOne (cascade = CascadeType.ALL)
	@JoinColumn(name = "address_id")
	private Address address;
	
	
	
	//Constructor
	public Customer() {
		
	}
	
	public Customer(int id, String firstName, String lastName, String gender, String email, String phoneNo,
			String accountType, int accountNo, double balance, int cardNo) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.phoneNo = phoneNo;
		this.accountType = accountType;
		this.accountNo = accountNo;
		this.balance = balance;
		this.cardNo = cardNo;
		
	}


	// Getters and Setters
	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getFirstName() {
		return firstName;
	}




	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}




	public String getLastName() {
		return lastName;
	}




	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getPhoneNo() {
		return phoneNo;
	}




	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}




	public String getAccountType() {
		return accountType;
	}




	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}




	public int getAccountNo() {
		return accountNo;
	}




	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}




	public double getBalance() {
		return balance;
	}




	public void setBalance(double balance) {
		this.balance = balance;
	}




	public int getCardNo() {
		return cardNo;
	}




	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}



	
	// ----------------------------------------
	
	
	// Methods
	
	

}
