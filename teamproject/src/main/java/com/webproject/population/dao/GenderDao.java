package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.GenderVO;

public interface GenderDao {

	public List<GenderVO> selectGender(HashMap<String, Object> params);
	

}
