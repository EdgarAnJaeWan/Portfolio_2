package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import com.webproject.population.vo.HomeVO;

@Mapper
public interface HomeMapper {

	 List<HomeVO> selectHome(); 

}
