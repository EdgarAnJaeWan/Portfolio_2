package com.webproject.population.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.SexualityVO;

@Mapper
public interface SexualityMapper {

	List<SexualityVO> selectSexuality(HashMap<String, Object> params);

}
