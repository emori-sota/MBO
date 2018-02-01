package com.shopping.gun.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class SubController {
	
	@RequestMapping("/home")
	public String index() {
		return "/index.html";
	}
}
