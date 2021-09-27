package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.areaVO;

public interface AreaService {

	public List<areaVO> selectArea(HashMap<String, Object> params) throws Exception;
	
}
