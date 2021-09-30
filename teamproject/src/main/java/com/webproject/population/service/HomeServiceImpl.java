package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webproject.population.dao.HomeDao;

import com.webproject.population.vo.HomeVO;


@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDao daohome;

	@Override
	public List<HomeVO> selectHome(HashMap<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return daohome.selectHome(param);
	}
	
	
	

	

}
