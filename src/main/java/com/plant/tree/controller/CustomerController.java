package com.plant.tree.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.plant.tree.bean.LoginRequest;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Plant;
import com.plant.tree.service.CustomerService;
import com.plant.tree.service.PlantService;

@Controller
@SessionAttributes("userEmail")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private PlantService plantService;

	@RequestMapping("loadLogin")
	public ModelAndView loadLoginPage() {
		return new ModelAndView("index");
	}

	@RequestMapping("loadRegistration")
	public ModelAndView loadRegistrationPage() {
		return new ModelAndView("register");
	}

	@RequestMapping(value = "register", method = RequestMethod.POST, consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView register(RegistrationRequest registrationRequest) {
		ResponseDetails responseDetails = customerService.register(registrationRequest);
		
		if ("000".equals(responseDetails.getResponseCode())) {
			return new ModelAndView("index");
		} else {
			return new ModelAndView("register", "responseDetails", responseDetails);
		}
		
	}

	@RequestMapping(value = "authenticate", method = RequestMethod.POST)
	public ModelAndView authenticate(LoginRequest loginRequest, HttpServletRequest request,ModelMap model) {
		System.err.println("Login Request");
		ResponseDetails responseDetails = customerService.authenticate(loginRequest);
		System.err.println(responseDetails.getResponseCode());
		if ("000".equals(responseDetails.getResponseCode())) {
			HttpSession session = request.getSession();
			session.setAttribute("userEmail", loginRequest.getEmailId());
			model.put("userEmail", loginRequest.getEmailId());
			List<Plant> plants = plantService.getPlants();
			if(loginRequest.getPlantId() != null && !"".equals(loginRequest.getPlantId().trim())) {
				return new ModelAndView("redirect:viewPlantDetails?plantId="+loginRequest.getPlantId());
			}
			return new ModelAndView("dashboard", "plants", plants);
		} else {
			return new ModelAndView("index", "responseDetails", responseDetails);
		}

	}

	@GetMapping("logOut")
	public String userLogOut(ModelMap model, HttpSession session) {
		session.invalidate();
		model.put("loggedout", "Your are successfully logged out!");
		return "index";
	}
}
