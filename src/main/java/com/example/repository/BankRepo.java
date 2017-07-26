package com.example.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.dataentity.Bank;

@Repository
public interface BankRepo extends CrudRepository<Bank, Long>{

	List<Bank> findByCountry(String country);

}
