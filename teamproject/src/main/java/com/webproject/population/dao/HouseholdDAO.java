package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.HouseholdVO;

public interface HouseholdDAO {

	public List<HouseholdVO> selectHousehold(HashMap<String, Object> params) throws Exception;

}
