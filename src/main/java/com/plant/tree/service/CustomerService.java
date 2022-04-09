package com.plant.tree.service;

import com.plant.tree.bean.LoginRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;

public interface CustomerService {

	ResponseDetails register(RegistrationRequest registrationRequest);
	
	ResponseDetails authenticate(LoginRequest loginRequest);
}
