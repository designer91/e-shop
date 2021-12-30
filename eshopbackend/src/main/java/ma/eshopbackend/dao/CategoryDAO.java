package ma.eshopbackend.dao;

import java.util.List;

import ma.eshopbackend.dto.Category;

public interface CategoryDAO {
	List<Category> list();
	Category get(long id);
}
