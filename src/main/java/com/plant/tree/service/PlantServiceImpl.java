package com.plant.tree.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.tree.domain.Plant;
import com.plant.tree.repository.PlantRepository;

@Service
public class PlantServiceImpl implements PlantService{
	@Autowired
	private PlantRepository repository;

	@Override
	public List<Plant> getPlants() {

		return repository.findAll();
	}
	@Override
	public Plant getSelectedPlant(int plantId) {
		return repository.findById(plantId).get();
	}
	
}
