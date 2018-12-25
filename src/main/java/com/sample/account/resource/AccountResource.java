package com.sample.account.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sample.account.model.Account;
import com.sample.account.service.AccountService;

@RestController
@RequestMapping("/account")
public class AccountResource {

	@Autowired
	private AccountService accountService;

	@GetMapping("/get/{accountNumber}")
	public Account findByAccountNumber(@PathVariable String accountNumber) {
		System.out.println("findByAccountNumber from resource" + accountNumber);
		Account account = accountService.findByAccountNumber(accountNumber);

		return account;
	}

	@GetMapping("/getAll")
	public List<Account> findAllAccounts() {
		System.out.println("findallaccount from resource");
		List<Account> accountList = accountService.findAllAccounts();

		return accountList;
	}
}
