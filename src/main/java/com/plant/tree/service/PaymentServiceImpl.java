package com.plant.tree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.bean.PaymentRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.repository.CartRepository;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private CartRepository repository;
	
	@Override
	public ResponseDetails payment(PaymentRequest paymentRequest) {
		// TODO Auto-generated method stub
		repository.deleteAll();
		ResponseDetails responseDetails = new ResponseDetails();
		responseDetails.setResponseCode("000");
		responseDetails.setResponseMessage("Order Placed successfully");
		return responseDetails;
	}

	
}
