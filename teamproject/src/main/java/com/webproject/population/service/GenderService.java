package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.GenderVO;

public interface GenderService {

	public List<GenderVO> selectGender(HashMap<String, Object> params) throws Exception;


}
