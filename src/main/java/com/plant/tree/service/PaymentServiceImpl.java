package com.plant.tree.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.bean.PaymentRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Plant;
import com.plant.tree.repository.CartRepository;
import com.plant.tree.repository.PlantRepository;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private CartRepository repository;
	
	@Autowired
	private PlantRepository plantRepository;
	@Transactional
	@Override
	public ResponseDetails payment(PaymentRequest paymentRequest, String userEmail) {
		// TODO Auto-generated method stub
		List<Cart> carts = repository.findByuserEmail(userEmail);

		for(Cart cart: carts) {
			Plant plant = plantRepository.findById(cart.getProductId()).get();
			plant.setPlantQuantity(Integer.parseInt(plant.getPlantQuantity()) - cart.getQuantity()+"");
			plantRepository.save(plant);
		}
		repository.deleteByuserEmail(userEmail);
		
		ResponseDetails responseDetails = new ResponseDetails();
		responseDetails.setResponseCode("000");
		responseDetails.setResponseMessage("Order Placed successfully");
		return responseDetails;
	}

	
}
