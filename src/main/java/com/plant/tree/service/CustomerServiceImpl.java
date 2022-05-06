package com.plant.tree.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.bean.LoginRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Customer;
import com.plant.tree.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerRepository repository;

	@Override
	public ResponseDetails register(RegistrationRequest registrationRequest) {
		ResponseDetails responseDetails = new ResponseDetails();
		try {
			Customer customer = new Customer();
			customer.setFirstName(registrationRequest.getFirstName());
			customer.setLastName(registrationRequest.getLastName());
			customer.setEmailId(registrationRequest.getEmailId());
			customer.setPassword(registrationRequest.getPassword());
			Customer savedCustomer = repository.save(customer);
			if(savedCustomer != null) {
				responseDetails.setResponseCode("000");
				responseDetails.setResponseMessage("Customer Registered successfully");
			} else {
				responseDetails.setResponseCode("001");
				responseDetails.setResponseMessage("Customer registration fail");
			}
		} catch(Exception e) {
			responseDetails.setResponseCode("500");
			responseDetails.setResponseMessage("Technical Error");
		}
		return responseDetails;
	}

	@Override
	public ResponseDetails authenticate(LoginRequest loginRequest) {
		// TODO Auto-generated method stub
		ResponseDetails responseDetails = new ResponseDetails();
		try {
			Customer customer = repository.findByEmailIdAndPassword(loginRequest.getEmailId(), loginRequest.getPassword());
			if(customer != null) {
				responseDetails.setResponseCode("000");
				responseDetails.setResponseMessage("Successfully Authenticated");
			} else {
				responseDetails.setResponseCode("001");
				responseDetails.setResponseMessage("User Name or Password is incorrect");
			}
		} catch(Exception e) {
			responseDetails.setResponseCode("500");
			responseDetails.setResponseMessage("Technical Error");
		}
		return responseDetails;
	}

}
