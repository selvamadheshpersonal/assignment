package com.plant.tree.repository;

import org.springframework.data.repository.CrudRepository;

import com.plant.tree.domain.Cart;

public interface CartRepository extends CrudRepository<Cart, Integer> {

}
