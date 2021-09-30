package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.HomeVO;

public interface HomeService {

	public List<HomeVO> selectHome(HashMap<String, Object> param) throws Exception;

}
