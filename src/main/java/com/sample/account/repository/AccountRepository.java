package com.sample.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sample.account.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{
	
	public Account findByAccountNumber(String accountNumber);
	
}
