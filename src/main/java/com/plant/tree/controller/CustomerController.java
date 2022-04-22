package com.plant.tree.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.plant.tree.bean.LoginRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;

	@RequestMapping("loadRegistration")
	public ModelAndView loadRegistrationPage() {
		return new ModelAndView("register");
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView register(RegistrationRequest registrationRequest) {
		ResponseDetails responseDetails = customerService.register(registrationRequest);
		return new ModelAndView("register", "responseDetails", responseDetails);
	}
	
	@RequestMapping(value = "authenticate", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView authenticate(LoginRequest loginRequest) {
		ResponseDetails responseDetails = customerService.authenticate(loginRequest);
		if("000".equals(responseDetails.getResponseCode())) {
			return new ModelAndView("dashboard");
		} else {
			return new ModelAndView("index", "responseDetails", responseDetails);
		}
		
	}
	
}
