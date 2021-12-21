package ma.eshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping (value = {"/", "/home", "/index"})
	public String index(Model model) {
		model.addAttribute("title", "Great products, Great prices!");
		model.addAttribute("userClickHome", true);
		return "home";	
	}
	
	@RequestMapping (value = "/products")
	public String products(Model model) {
		model.addAttribute("title", "all products");
		model.addAttribute("userClickProducts", true);
		return "home";	
	}
	
	@RequestMapping (value = "/about")
	public String about(Model model) {
		model.addAttribute("title", "About Us");
		model.addAttribute("userClickAbout", true);
		return "home";	
	}
	
	@RequestMapping (value = "/contact")
	public String contact(Model model) {
		model.addAttribute("title", "Get in touch with Us");
		model.addAttribute("userClickContact", true);
		return "home";	
	}
	
	/*
	 * @RequestMapping (value = "/test/{greeting}") public String test(Model
	 * model, @PathVariable("greeting")String greeting) {
	 * model.addAttribute("greeting", greeting); return "home"; }
	 */
	
}
