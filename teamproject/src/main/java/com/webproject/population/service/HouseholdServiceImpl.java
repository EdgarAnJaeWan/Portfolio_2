package com.webproject.population.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import com.webproject.population.dao.HouseholdDAO;
import com.webproject.population.mapper.HouseholdMapper;
import com.webproject.population.vo.HouseholdVO;

import lombok.Setter;

public class HouseholdServiceImpl implements HouseholdService {

	
//		@Autowired
//		private HouseholdDAO householddao;

	@Setter
	private HouseholdMapper householdMapper;
	  
		@Override
		public List<HouseholdVO> selectHousehold(HashMap<String, Object> params) throws Exception {
			// TODO Auto-generated method stub
			//return householddao.selectHousehold(params);
			return householdMapper.selectHousehold(params);
		}

}
