package com.plant.tree.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Plant;
import com.plant.tree.service.CartService;
import com.plant.tree.service.PlantService;

@Controller
public class CartController {
	@Autowired
	private PlantService plantService;
	@Autowired
	private CartService cartService;
	
	@RequestMapping("addToCart")
	public ModelAndView addToCart(@RequestParam("selectedPlantId") int selectedPlantId,ModelMap map) {
		Plant plant = plantService.getSelectedPlant(selectedPlantId);
		
		
		ResponseDetails responseDetails = cartService.storeCartItems(plant);
		return new ModelAndView("register", "responseDetails", responseDetails);
	}
}
