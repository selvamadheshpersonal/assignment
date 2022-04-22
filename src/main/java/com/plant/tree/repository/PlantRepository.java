package com.plant.tree.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.plant.tree.domain.Plant;

@Repository
public interface PlantRepository extends CrudRepository<Plant, Integer>{
	List<Plant> findAll();

}
