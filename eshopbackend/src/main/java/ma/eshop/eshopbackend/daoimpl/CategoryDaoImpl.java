package ma.eshop.eshopbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import ma.eshop.eshopbackend.dao.CategoryDAO;
import ma.eshop.eshopbackend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDaoImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	// private static List<Category> categories = new ArrayList<>();
	
	/*
	 * private static List<Category> categories = new ArrayList<Category>();
	 * 
	 * static { Category cat_1 = new Category(); cat_1.setId(1);
	 * cat_1.setName("Iphone 92"); cat_1.setDescription("Iphone next generation");
	 * cat_1.setImageURL("iphone.png"); cat_1.setActive(true);
	 * categories.add(cat_1);
	 * 
	 * Category cat_2 = new Category(); cat_2.setId(2);
	 * cat_2.setName("Samsung S56");
	 * cat_2.setDescription("Samsung next generation");
	 * cat_2.setImageURL("samsung.png"); cat_2.setActive(true);
	 * categories.add(cat_2);
	 * 
	 * Category cat_3 = new Category(); cat_3.setId(3);
	 * cat_3.setName("Infinix 678");
	 * cat_3.setDescription("Infinix next generation");
	 * cat_3.setImageURL("infinix.png"); cat_3.setActive(true);
	 * categories.add(cat_3);
	 * 
	 * Category cat_4 = new Category(); cat_4.setId(4);
	 * cat_4.setName("Infinix 678");
	 * cat_4.setDescription("Infinix next generation");
	 * cat_4.setImageURL("infinix.png"); cat_4.setActive(true);
	 * categories.add(cat_4); }
	 */
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> list() {
		String selectActiveCategory = " FROM Category WHERE active =:active ";

		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);

		query.setParameter("active", true);

		return query.getResultList();
	}

	// Get a single category based on << id >>
	@Override
	public Category get(int id) {
		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	@Override
	public boolean add(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Category category) {
		category.setActive(false);
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
