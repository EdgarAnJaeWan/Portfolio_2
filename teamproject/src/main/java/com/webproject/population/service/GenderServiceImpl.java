package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.webproject.population.dao.GenderDao;
import com.webproject.population.vo.GenderVO;

@Service("genderService")
public class GenderServiceImpl implements GenderService {

	@Autowired
	@Qualifier("genderDao")
	private GenderDao dao;

	@Override
	public List<GenderVO> selectGender(HashMap<String, Object> params) throws Exception{
		// TODO Auto-generated method stub
		return dao.selectGender(params);
	}
	
}
