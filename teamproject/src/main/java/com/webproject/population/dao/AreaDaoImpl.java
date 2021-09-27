package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webproject.population.vo.areaVO;

@Repository
public class AreaDaoImpl implements AreaDAO {

	@Autowired
	private SqlSession sqlSession;
	

	private static final String namespace = "com.webproject.population.mapper.AreaMapper";
	
	@Override
	public List<areaVO> selectArea(HashMap<String, Object> params) throws Exception {
		
		return sqlSession.selectList(namespace+".selectArea", params);
		
	}

}
