package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.areaVO;

@Mapper
public interface AreaMapper {
	
	List<areaVO> selectArea();

}
