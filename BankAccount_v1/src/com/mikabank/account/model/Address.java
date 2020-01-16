package com.mikabank.account.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="street_no")
	private int streetNo;
	
	@Column(name="street_name")
	private String streetName;
	
	@Column(name="city")
	private String city;
	
	@Column(name="province")
	private String province;
	
	@Column(name="postal_code")
	private String postalCode;
	
	@Column(name="country")
	private String country;


	// CONSTRUCTOR
	public Address() {
		
	}

	// GETTERS AND SETTERS
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getStreetNo() {
		return streetNo;
	}


	public void setStreetNo(int streetNo) {
		this.streetNo = streetNo;
	}


	public String getStreetName() {
		return streetName;
	}


	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getProvince() {
		return province;
	}


	public void setProvince(String province) {
		this.province = province;
	}


	public String getPostalCode() {
		return postalCode;
	}


	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}
	
	
	

}
