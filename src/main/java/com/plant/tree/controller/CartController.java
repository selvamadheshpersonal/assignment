package com.plant.tree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.plant.tree.bean.ResponseDetails;
import com.plant.tree.domain.Cart;
import com.plant.tree.domain.Plant;
import com.plant.tree.service.CartService;
import com.plant.tree.service.PlantService;

@Controller
@SessionAttributes("userEmail")
public class CartController {
	@Autowired
	private PlantService plantService;
	@Autowired
	private CartService cartService;
	String count;
	@RequestMapping("addToCart")
	public ModelAndView addToCart(@RequestParam("selectedPlantId") int selectedPlantId,@RequestParam("userEmail") String userEmail,@RequestParam("quantity") String quantity,ModelMap map) {
		
		Plant plant = plantService.getSelectedPlant(selectedPlantId);	
		ResponseDetails responseDetails = cartService.storeCartItems(plant,userEmail);
		System.out.println(selectedPlantId+quantity);
		if ("000".equals(responseDetails.getResponseCode())) {
			Iterable<Cart> cartItemList= cartService.getCartItem();
			return new ModelAndView("payment", "cartItemList", cartItemList);
		} else {
			return new ModelAndView("viewPlant", "responseDetails", responseDetails);
		}
	}
}
