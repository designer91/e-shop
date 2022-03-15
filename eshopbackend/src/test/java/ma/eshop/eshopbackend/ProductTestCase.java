package ma.eshop.eshopbackend;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import ma.eshop.eshopbackend.dao.ProductDAO;
import ma.eshop.eshopbackend.dto.Product;

public class ProductTestCase {
	
	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("ma.eshop.eshopbackend");
		context.refresh();
		productDAO = (ProductDAO) context.getBean("productDAO");
	}
	
	@Test
	public void testCRUDProduct() {
		/*
		 * product = new Product(); product.setCode("OPPOBHBDG98X0");
		 * product.setName("Oppo F11 Pro Black"); product.setBrand("Oppo");
		 * product.setDescription("The best phone ever !"); product.setUnitPrice(4500);
		 * product.setQuantity(12); product.setActive(true); product.setCategoryId(3);
		 * product.setSupplierId(4); product.setPurshases(5); product.setViews(15);
		 * 
		 * assertEquals("Something getting wrong while inserting product!", true,
		 * productDAO.add(product));
		 * 
		 * product = productDAO.get(3); product.setName("Samsung S8 plus");
		 * assertEquals("Something getting wrong while updating the product!", true,
		 * productDAO.update(product));
		 * assertEquals("Something getting wrong while deleting the product!", true,
		 * productDAO.delete(product));
		 * assertEquals("Something getting wrong while listing the products!", 11,
		 * productDAO.list().size());
		 */
	}
	
	@Test
	public void testListActiveProducts() {
		assertEquals("Something getting wrong while fetching the list!", 10, productDAO.listActiveProducts().size());
	}
	
	@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Something getting wrong while fetching the list!", 7, productDAO.listActiveProductsByCategory(3).size());
		assertEquals("Something getting wrong while fetching the list!", 1, productDAO.listActiveProductsByCategory(4).size());
	}
	
	@Test
	public void testGetLatestActiveProducts() {
		assertEquals("Something getting wrong while fetching the list!", 5, productDAO.getLatestActiveProducts(5).size());
	}

}
