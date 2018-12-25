package com.sample.account.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="account")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Account implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7370401331241601483L;
	
	@Id
	private int Id;
	
	private String accountNumber;	
	private String accountType;
	private Double amount;
	
	@JsonBackReference(value="customer-account")
	@ManyToOne
    @JoinColumn(name = "customer_id")	
    private Customer customer;
		
	public Account() {}

	public Account(int id, String accountNumber, String accountType, Double amount) {
		super();
		Id = id;
		this.accountNumber = accountNumber;
		this.accountType = accountType;
		this.amount = amount;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}
	
}
