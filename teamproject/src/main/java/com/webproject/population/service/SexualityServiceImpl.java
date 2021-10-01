package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import com.webproject.population.mapper.SexualityMapper;
import com.webproject.population.vo.SexualityVO;

import lombok.Setter;

public class SexualityServiceImpl implements SexualityService {

	@Setter
	private SexualityMapper sexualityMapper;

	@Override
	public List<SexualityVO> selectSexuality(HashMap<String, Object> params) throws Exception {
		
		return sexualityMapper.selectSexuality(params);
		
	}
	
}