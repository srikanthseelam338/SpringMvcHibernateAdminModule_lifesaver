package com.BloodBank.Admin.AdminModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "customer")
public class Customer {

	@GeneratedValue(generator = "increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	@Id
	@Column(name = "customerid", length = 10)
	private int customerid;
	@Column(name = "customername", length = 40)
	private String customername;
	@Column(name = "customerAge", length = 40)
	private int customerAge;
	@Column(name = "customerGender", length = 40)
	private String customerGender;
	@Column(name = "customerAdharno", length = 12)
	private String customerAdharno;
	@Column(name = "customerbloodGroup", length = 15)
	private String customerbloodGroup;
	@Column(name = "customerAddress", length = 100)
	private String customerAddress;
	@Column(name = "customerMobileNo", length = 25)
	private String customerMobileNo;

	@Column(name = "request", length = 20)
	private String request;
	@Column(name = "bloodbankname", length = 20)
	private String bloodbankname;
	@Column(name = "reason", length = 20)
	private String reason;

	public int getCustomerAge() {
		return customerAge;
	}

	public void setCustomerAge(int customerAge) {
		this.customerAge = customerAge;
	}

	public String getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getCustomerAdharno() {
		return customerAdharno;
	}

	public void setCustomerAdharno(String customerAdharno) {
		this.customerAdharno = customerAdharno;
	}

	public String getCustomerbloodGroup() {
		return customerbloodGroup;
	}

	public void setCustomerbloodGroup(String customerbloodGroup) {
		this.customerbloodGroup = customerbloodGroup;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerMobileNo() {
		return customerMobileNo;
	}

	public void setCustomerMobileNo(String customerMobileNo) {
		this.customerMobileNo = customerMobileNo;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public String getBloodbankname() {
		return bloodbankname;
	}

	public void setBloodbankname(String bloodbankname) {
		this.bloodbankname = bloodbankname;
	}
}
