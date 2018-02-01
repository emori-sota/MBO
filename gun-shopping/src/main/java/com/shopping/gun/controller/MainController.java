package com.shopping.gun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index() {
		
		//String redirectPath = "/index";
		return "index";
	}
	
}
