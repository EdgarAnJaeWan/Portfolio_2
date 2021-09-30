package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.HouseholdVO;

public interface HouseholdService {



	public List<HouseholdVO> selectHousehold(HashMap<String, Object> params) throws Exception ;

	

}
