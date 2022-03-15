package ma.eshop.eshopbackend;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import ma.eshop.eshopbackend.dao.CategoryDAO;
import ma.eshop.eshopbackend.dto.Category;

public class CategoryTestCase {
	
	private static AnnotationConfigApplicationContext context;
	
	private static CategoryDAO categoryDAO;
	
	private Category category;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("ma.eshop.eshopbackend");
		context.refresh();
		
		categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
	}
	
	
	/*
	 * @Test public void testAddCategory() { category = new Category();
	 * category.setName("Laptops");
	 * category.setDescription("Description of laptops category");
	 * category.setImageURL("cat_laptops.png");
	 * 
	 * assertEquals("Category added successfully!", true,
	 * categoryDAO.add(category));
	 * 
	 * }
	 */
	 
	
	/*
	 * @Test public void testGetCategory() { category = categoryDAO.get(1);
	 * 
	 * assertEquals("Category fetched successfully", "Laptops",
	 * category.getName()); }
	 */
	
	/*
	 * @Test public void testUpdateCategory() { category = categoryDAO.get(1);
	 * category.setName("TVs"); assertEquals("Updated successfully to -TVs-", true,
	 * categoryDAO.update(category)); }
	 */
	
	
	  /*@Test 
	  public void testDeleteCategory() { 
		  category = categoryDAO.get(1);
		  assertEquals("Category was deleted successfully", true, categoryDAO.delete(category));
	  }*/
	
		/*
		 * @Test public void testListCategory() {
		 * assertEquals("Category list was fetched successfully", 4,
		 * categoryDAO.list().size()); }
		 */
	 
	@Test
	public void testCRUDCategory() {
		
		category = new Category();
		category.setName("Laptops");
		category.setDescription("Description of laptops category");
		category.setImageURL("cat_1.png");

		assertEquals("Category was not added, something get wrong!", true, categoryDAO.add(category));
		
		category = new Category();
		category.setName("Televisions");
		category.setDescription("Description of Televisions category");
		category.setImageURL("cat_2.png");

		assertEquals("Category added successfully!", true, categoryDAO.add(category));
		
		category = categoryDAO.get(2);
		category.setName("TVs");
		assertEquals("Category fetched successfully", "TVs", category.getName());
		
		assertEquals("Category was deleted successfully", true, categoryDAO.delete(category));
		
		assertEquals("Category list was fetched successfully", 1, categoryDAO.list().size());
		
	}

}
