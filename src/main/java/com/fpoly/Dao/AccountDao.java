package com.fpoly.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.fpoly.entitys.Account;

public interface AccountDao extends JpaRepository<Account, String> {

	Account findByEmail(String email);

	@Query("SELECT o FROM Account o WHERE o.id LIKE ?1")
	List<Account> findByIdd(String id);

	List<Account> findByRole(boolean role);
}
