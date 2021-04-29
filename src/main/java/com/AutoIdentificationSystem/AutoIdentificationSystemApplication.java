package com.AutoIdentificationSystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com.*")
@SpringBootApplication
public class AutoIdentificationSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(AutoIdentificationSystemApplication.class, args);
	}

}
