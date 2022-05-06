package com.plant.tree.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.plant.tree.bean.RegistrationRequest;
import com.plant.tree.bean.ResponseDetails;
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
	@RequestMapping("viewPlantDetails")
	public ModelAndView viewPlantDEtailsPage(@RequestParam("plantId") int plantId,ModelMap map) {
		Plant plant = plantService.getSelectedPlant(plantId);
		map.put("selectedPlant", plant);
		System.out.println(plant.getPlantName());		
		return new ModelAndView("viewPlant","selectedPlant",plant);
	}
	
	@RequestMapping("indoor")
	public ModelAndView getIndoorPlants(ModelMap map) {
		List<Plant> plants= plantService.getPlants();
		List<Plant> result = new ArrayList<>();
		for (Plant plant: plants) {
            if (plant.getPlantCategory().equalsIgnoreCase("Indoor")) {            	
                result.add(plant);
            }
        }
		map.put("heading", "Indoor Plants");
		return new ModelAndView("dashboard","plants",result);
		
	}
	@RequestMapping("outdoor")
	public ModelAndView getOutdoorPlants(ModelMap map) {
		List<Plant> plants= plantService.getPlants();
		List<Plant> result = new ArrayList<>();
		for (Plant plant: plants) {
            if (plant.getPlantCategory().equalsIgnoreCase("Outdoor")) {            	
                result.add(plant);
            }
        }
		map.put("heading", "Outdoor Plants");
		return new ModelAndView("dashboard","plants",result);
		
	}
	
	@RequestMapping("/search")
	public ModelAndView searchStudents(@RequestParam String sName, ModelMap model) {
		  List<Plant> searchResult = new ArrayList<>();
		  List<Plant> plants= plantService.getPlants();
		    for(Plant plant: plants) {
		        if (plant.getPlantName().toLowerCase().contains(sName)) {
		        	
		        	searchResult.add(plant);
		        }
		    }
		return new ModelAndView("dashboard","plants",searchResult);
	}
}
