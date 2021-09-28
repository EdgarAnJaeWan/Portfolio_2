package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.areaVO;

public interface AreaDAO {

	
	public List<areaVO> selectArea(HashMap<String, Object> params) throws Exception;
	
	
	
}
