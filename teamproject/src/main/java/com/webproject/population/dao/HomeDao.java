package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.HomeVO;

public interface HomeDao {

	public List<HomeVO> selectHome(HashMap<String, Object> param) throws Exception;
	
}
