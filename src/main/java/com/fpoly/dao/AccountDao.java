package com.fpoly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fpoly.entitys.Account;

public interface AccountDao extends JpaRepository<Account, Long> {
	
	Account findByEmail(String email);

	@Query("SELECT o FROM Account o WHERE o.id = ?1")
	List<Account> findByIdd(Long id);

	List<Account> findByRole(boolean role);
}
