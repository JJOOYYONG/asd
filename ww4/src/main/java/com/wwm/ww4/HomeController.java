package com.wwm.ww4;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() { return "main/main";}
	
	@GetMapping("/main2")
	public String home2() {return "main/main2";}
	
	@GetMapping("/main3")
	public String home3() {return "main/main3";}
	
	@GetMapping("/main3g")
	public String home3g() {return "main/generic";}
	
	@GetMapping("/main3e")
	public String home3e() {return "main/elements";}
	
	@GetMapping("/main4")
	public String home4() {return "main/main4";	}
	
	@GetMapping("/main5")
	public String home5() {	return "main/main5";}
	
	@GetMapping("/main6")
	public String home6() {	return "main/main6";}
	
	@GetMapping("/main7")
	public String home7() {	return "main/main7";}
	
	@GetMapping("/main8")
	public String home8() {	return "main/main8";}
	
	@GetMapping("/main9")
	public String home9() {	return "main/main9";}
	
	@GetMapping("/main10")
	public String home10() {return "main/main10";}
	
	@GetMapping("/main11")
	public String home11() {return "main/main11";}
	
	@GetMapping("/main12")
	public String home12() {return "main/main12";}
	
	@GetMapping("/about")
	public String about() {return "etc/about";}
	
	@GetMapping("/contact")
	public String contact() {return "etc/contact";}
	
	@GetMapping("/pricing")
	public String pricing() {return "etc/pricing";}
	
	
	
	
}
