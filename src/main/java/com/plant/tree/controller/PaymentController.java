package com.plant.tree.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.plant.tree.bean.PaymentRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Plant;
import com.plant.tree.service.PaymentService;
import com.plant.tree.service.PlantService;

@Controller
public class PaymentController {

	@Autowired
	private PlantService plantService;
	
	@Autowired
	private PaymentService paymentService;
	
	
	
	@RequestMapping(value = "pay", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView pay(PaymentRequest paymentRequest,HttpSession session, ModelMap map ) {
		ResponseDetails responseDetails = paymentService.payment(paymentRequest, (String) session.getAttribute("userEmail"));
		
		if ("000".equals(responseDetails.getResponseCode())) {
			List<Plant> plants= plantService.getPlants();
			System.out.println(plants.size());
			map.put("responseDetails", responseDetails);
			return new ModelAndView("dashboard","plants",plants);
		} else {
			return new ModelAndView("register", "responseDetails", responseDetails);
		}
		
	}
}
