package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() { return "main/main";}
	
	@GetMapping("/about")
	public String about() {return "etc/about";}
	
	@GetMapping("/contact")
	public String contact() {return "etc/contact";}
	
	@GetMapping("/pricing")
	public String pricing() {return "etc/pricing";}

}
