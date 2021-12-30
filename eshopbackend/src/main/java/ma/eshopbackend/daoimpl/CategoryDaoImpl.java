package ma.eshopbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ma.eshopbackend.dao.CategoryDAO;
import ma.eshopbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDaoImpl implements CategoryDAO {
	
	private static List<Category> categories = new ArrayList<Category>();
	
	static {
		Category cat_1 = new Category();
		cat_1.setId(1);
		cat_1.setName("Iphone 92");
		cat_1.setDescription("Iphone next generation");
		cat_1.setImageURL("iphone.png");
		cat_1.setActive(true);
		categories.add(cat_1);
		
		Category cat_2 = new Category();
		cat_2.setId(2);
		cat_2.setName("Samsung S56");
		cat_2.setDescription("Samsung next generation");
		cat_2.setImageURL("samsung.png");
		cat_2.setActive(true);
		categories.add(cat_2);
		
		Category cat_3 = new Category();
		cat_3.setId(3);
		cat_3.setName("Infinix 678");
		cat_3.setDescription("Infinix next generation");
		cat_3.setImageURL("infinix.png");
		cat_3.setActive(true);
		categories.add(cat_3);
		
		Category cat_4 = new Category();
		cat_4.setId(4);
		cat_4.setName("Infinix 678");
		cat_4.setDescription("Infinix next generation");
		cat_4.setImageURL("infinix.png");
		cat_4.setActive(true);
		categories.add(cat_4);
	}

	@Override
	public List<Category> list() {
		return categories;
	}

	@Override
	public Category get(long id) {
		// Get a single category
		for(Category category : categories) {
			if (category.getId() == id) return category;
		}
		return null;
	}

}
