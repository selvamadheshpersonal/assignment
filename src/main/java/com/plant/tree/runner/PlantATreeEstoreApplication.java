package com.plant.tree.runner;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan("com.plant.tree")
@EntityScan("com.plant.tree.domain")
@EnableJpaRepositories("com.plant.tree.repository")
public class PlantATreeEstoreApplication {

	public static void main(String[] args) {
		SpringApplication.run(PlantATreeEstoreApplication.class, args);
	}

}
