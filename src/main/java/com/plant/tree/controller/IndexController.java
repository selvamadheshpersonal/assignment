package com.plant.tree.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.plant.tree.domain.Plant;
import com.plant.tree.service.CustomerService;
import com.plant.tree.service.PlantService;

@Controller
public class IndexController {
	@Autowired
	private PlantService plantService;
	
	@RequestMapping("index")
	public ModelAndView openIndex() {
		List<Plant> plants= plantService.getPlants();
		System.out.println(plants.size());
		return new ModelAndView("index","plants",plants);
		
	}
	@RequestMapping("")
	public ModelAndView initialPage() {
		List<Plant> plants= plantService.getPlants();
		System.out.println(plants.size());
		return new ModelAndView("dashboard","plants",plants);
		
	}

	
}
