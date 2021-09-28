package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webproject.population.dao.AreaDAO;
import com.webproject.population.vo.areaVO;

@Service
public class AreaServiceImpl implements AreaService {


	@Autowired
	private AreaDAO dao;
	
	
	@Override
	public List<areaVO> selectArea(HashMap<String, Object> params) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectArea(params);
	}

}
