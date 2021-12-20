package ma.eshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping (value = {"/", "/home", "/index"})
	public String index(Model model) {
		model.addAttribute("greeting", "Welcome to Spring World");
		model.addAttribute("tagline", "Spring offers a powerful web framework "
										+ "called Spring MVC that can be used to develop "
										+ "the web frontend for a Spring application.");
		return "home";	
	}
	
	/*
	 * @RequestMapping (value = "/test/{greeting}") public String test(Model
	 * model, @PathVariable("greeting")String greeting) {
	 * model.addAttribute("greeting", greeting); return "home"; }
	 */
	
}
