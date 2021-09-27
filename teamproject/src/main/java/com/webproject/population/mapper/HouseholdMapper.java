package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.HouseholdVO;

@Mapper
public interface HouseholdMapper {
	
	List<HouseholdVO> selectAll();

}
