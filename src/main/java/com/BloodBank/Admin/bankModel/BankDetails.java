package com.BloodBank.Admin.bankModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "BankDeatils")
public class BankDetails {
	@GeneratedValue(generator = "increment")
	@GenericGenerator(name = "increment", strategy = "increment")
	@Id
	@Column(name = "serialNo", length = 10)
	private int serialNo;
	@Column(name = "bloodBankname", length = 100)
	private String bloodBankname;
	@Column(name = "bloodBankLoc", length = 100)
	private String bloodBankLoc;
	@Column(name = "bloodBankContactNumber", length = 15)
	private String bloodBankContactNumber;
	@Column(name = "bloodBankAddress", length = 100)
	private String bloodBankAddress;

	public int getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}

	public String getBloodBankname() {
		return bloodBankname;
	}

	public void setBloodBankname(String bloodBankname) {
		this.bloodBankname = bloodBankname;
	}

	public String getBloodBankLoc() {
		return bloodBankLoc;
	}

	public void setBloodBankLoc(String bloodBankLoc) {
		this.bloodBankLoc = bloodBankLoc;
	}

	public String getBloodBankContactNumber() {
		return bloodBankContactNumber;
	}

	public void setBloodBankContactNumber(String bloodBankContactNumber) {
		this.bloodBankContactNumber = bloodBankContactNumber;
	}

	public String getBloodBankAddress() {
		return bloodBankAddress;
	}

	public void setBloodBankAddress(String bloodBankAddress) {
		this.bloodBankAddress = bloodBankAddress;
	}

}
