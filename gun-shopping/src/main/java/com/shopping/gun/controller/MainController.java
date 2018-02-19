package com.shopping.gun.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shopping.gun.model.User;

@Controller
public class MainController {
	
	@Autowired
	User user;
	
	@RequestMapping("/")
	public String index(Model model) {
		
		user.setName("emo");
		
		model.addAttribute("name", user.getName());
		
		//String redirectPath = "/index";
		return "index";
	}
	
}
