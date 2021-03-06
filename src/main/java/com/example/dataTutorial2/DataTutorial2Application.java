package com.example.dataTutorial2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@ComponentScan({ "com.example" })
@EnableJpaRepositories({ "com.example" })
@EntityScan({ "com.example" })
@SpringBootApplication
public class DataTutorial2Application {

	public static void main(String[] args) {
		SpringApplication.run(DataTutorial2Application.class, args);
	}
}
