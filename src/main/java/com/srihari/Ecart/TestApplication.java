  package com.srihari.Ecart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.srihari.Ecart")
public class TestApplication {

	public static void main(String[] args) {
		
		System.out.println("start main app");
		SpringApplication.run(TestApplication.class, args);
	}

}
