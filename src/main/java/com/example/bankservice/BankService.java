package com.example.bankservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.dataentity.Bank;
import com.example.repository.BankRepo;



@RestController
public class BankService {
	
	@Autowired
	private BankRepo repository;
	
	@RequestMapping(value="/banks", method=RequestMethod.GET)
	List<Bank> findByCountry(@RequestParam(required=false) String country){
		List<Bank> banks = this.repository.findByCountry(country);
		return banks;
	}
	
	@RequestMapping(value="allbanks", method=RequestMethod.GET)
	Long banksCount(){
		return this.repository.count();
	}
	
	@RequestMapping(value="/bank", method=RequestMethod.GET)
	Bank findById(@RequestParam(required=false) String id){
		System.out.println("tuk");
		Long LongId = Long.parseLong(id);
		List<Bank> banks = new ArrayList<>();
		Bank currentBank = null;
		if (id!=null){
			currentBank = this.repository.findOne(LongId);
			banks.add(currentBank);
		}
		return currentBank;
	}

}
