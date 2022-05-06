package com.plant.tree.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.plant.tree.domain.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer> {
	
	Cart findByuserEmailAndProductId(String userEmail, int productId);
	
	long deleteByuserEmail(String userEmail);
	
	List<Cart> findByuserEmail(String userEmail);

}
