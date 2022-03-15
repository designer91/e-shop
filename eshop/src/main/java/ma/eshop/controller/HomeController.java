package ma.eshop.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ma.eshop.eshopbackend.dao.CategoryDAO;
import ma.eshop.eshopbackend.dao.ProductDAO;
import ma.eshop.eshopbackend.dto.Category;
import ma.eshop.eshopbackend.dto.Product;
import ma.eshop.exception.ProductNotFoundException;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private ProductDAO productDAO;

	@RequestMapping(value = { "/", "/home", "/index" })
	public String index(Model model) {
		model.addAttribute("title", "Great products, Great prices!");

		logger.info("Inside HomeController index method - INFO");
		logger.debug("Inside HomeController index method - DEBUG");

		model.addAttribute("categories", categoryDAO.list());

		model.addAttribute("userClickHome", true);
		return "home";
	}

	/*
	 * @RequestMapping (value = "/products") public String products(Model model) {
	 * model.addAttribute("title", "All products");
	 * model.addAttribute("userClickProducts", true); return "home"; }
	 */

	@RequestMapping(value = "/about")
	public String about(Model model) {
		model.addAttribute("title", "About Us");
		model.addAttribute("userClickAbout", true);
		return "home";
	}

	@RequestMapping(value = "/contact")
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

	@RequestMapping(value = "/show/all/products")
	public String showAllProducts(Model model) {
		model.addAttribute("title", "All products");
		// Get the list of all categories
		model.addAttribute("categories", categoryDAO.list());
		model.addAttribute("userClickAllProducts", true);
		return "home";
	}

	@RequestMapping(value = "/show/category/{id}/products")
	public String showCategoryProducts(Model model, @PathVariable("id") int id) {
		model.addAttribute("title", "Category of products");
		// Fetch a single category from categoryDAO
		Category category = null;
		category = categoryDAO.get(id);
		model.addAttribute("title", category.getName());
		model.addAttribute("categories", categoryDAO.list());
		model.addAttribute("category", category);
		model.addAttribute("userClickCategoryProducts", true);
		return "home";
	}

	@RequestMapping(value = "/show/{id}/product")
	public String ShowSingleProduct(Model model, @PathVariable int id) throws ProductNotFoundException {
		// model.addAttribute("title", "Single Product");
		Product p = productDAO.get(id);
		if (p == null)
			throw new ProductNotFoundException();
		p.setViews(p.getViews() + 1);
		productDAO.update(p);
		model.addAttribute("title", p.getName());
		model.addAttribute("product", p);
		model.addAttribute("userClickShowProduct", true);

		return "home";
	}

}
