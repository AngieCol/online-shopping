package com.ang.shoppingbackend.dao;

import java.util.List;

import com.ang.shoppingbackend.dto.Category;

public interface CategoryDAO {

	
	List<Category> list();
	
	Category get(int id);
	
}
