package com.sample.account.service;

import java.util.List;

import com.sample.account.model.Account;

public interface AccountService {
	
	public Account findByAccountNumber(String accountNumber);
	
	public List<Account> findAllAccounts();
}
