package com.plant.tree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.bean.AddToCartRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Customer;
import com.plant.tree.domain.Plant;
import com.plant.tree.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartRepository repository;
	
	@Override
	public ResponseDetails storeCartItems(Plant plant, String userEmail) {
		ResponseDetails responseDetails = new ResponseDetails();
		try {
			Cart cart = new Cart();
			cart.setProductId(plant.getId());
			cart.setUserEmail(userEmail);
			cart.setProductPrice(plant.getPrice());
			cart.setProductName(plant.getPlantName());
			cart.setProductImage(plant.getImageName());
			cart.setQuantity(1);
			Cart savedCart = repository.save(cart);
			if(savedCart != null) {
				responseDetails.setResponseCode("000");
				responseDetails.setResponseMessage("Items added successfully");
			} else {
				responseDetails.setResponseCode("001");
				responseDetails.setResponseMessage("Failed to Add");
			}
		} catch(Exception e) {
			responseDetails.setResponseCode("500");
			responseDetails.setResponseMessage("Technical Error");
		}
		return responseDetails;
	}
	@Override
	public Iterable<Cart> getCartItem() {
		return repository.findAll();
	}
	}

