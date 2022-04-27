package com.plant.tree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.bean.AddToCartRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Customer;
import com.plant.tree.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartRepository repository;
	
	@Override
	public ResponseDetails storeCartItems(AddToCartRequest SelectedPlant) {
		ResponseDetails responseDetails = new ResponseDetails();
		try {
			Cart cart = new Cart();
			cart.setProductId(SelectedPlant.getProductId());
			cart.setUserEmail(SelectedPlant.getUserEmail());
			cart.setProductPrice(SelectedPlant.getProductPrice());
			cart.setProductName(SelectedPlant.getProductName());
			cart.setProductImage(SelectedPlant.getProductImage());
			cart.setQuantity(SelectedPlant.getQuantity());
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
	}

