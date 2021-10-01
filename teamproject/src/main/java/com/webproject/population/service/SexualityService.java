package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.vo.SexualityVO;

public interface SexualityService {

	public List<SexualityVO> selectSexuality(HashMap<String, Object> params) throws Exception;

}
