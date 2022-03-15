package ma.eshop.eshopbackend.dao;

import java.util.List;

import ma.eshop.eshopbackend.dto.Category;

public interface CategoryDAO {
	List<Category> list();
	Category get(int id);
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
}
