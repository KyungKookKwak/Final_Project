package com.kh.spring.thing.model.dao;

import java.util.List;

import com.kh.spring.thing.model.vo.Category;
import com.kh.spring.thing.model.vo.Product;

public interface ThingDao {

	List<Category> selectCategorys();

	Product selectOne(int productNo);

}
