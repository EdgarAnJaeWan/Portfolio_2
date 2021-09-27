package com.webproject.population.service;

import java.util.List;

import com.webproject.population.mapper.HouseholdMapper;
import com.webproject.population.vo.HouseholdVO;

import lombok.Setter;

public class HouseholdServiceImpl implements HouseholdService {

	
	  @Setter
	  private HouseholdMapper householdMapper;
	  
	  @Override
	  public List<HouseholdVO> findAll() { 
		  // TODO Auto-generated method   stub
	  
	  //List<BoardVO> boards = boardDao.selectAll();
	  List<HouseholdVO> households = householdMapper.selectAll();
	  
	  return households;	  
	  
	  }
	 

}
