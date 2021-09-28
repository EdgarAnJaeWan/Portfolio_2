package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.GenderVO;

@Mapper
public interface GenderMapper {
	List<GenderVO> selectGender();
	
}
