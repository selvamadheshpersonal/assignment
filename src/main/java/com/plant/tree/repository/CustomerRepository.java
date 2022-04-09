package com.plant.tree.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.plant.tree.domain.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer>{

	Customer findByEmailIdAndPassword(String emailId, String password);
}
