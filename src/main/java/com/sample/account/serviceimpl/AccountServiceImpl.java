package com.sample.account.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.account.model.Account;
import com.sample.account.repository.AccountRepository;
import com.sample.account.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	private AccountRepository accountRepository;

	@Override
	public Account findByAccountNumber(String accountNumber) {
		System.out.println("Account Number------>"+accountNumber);
		Account account = accountRepository.findByAccountNumber(accountNumber);
		
		return account;
	}

	@Override
	public List<Account> findAllAccounts() {
		
		return accountRepository.findAll();
	}

	

}
