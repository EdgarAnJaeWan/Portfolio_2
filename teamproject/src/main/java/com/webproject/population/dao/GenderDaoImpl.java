package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.webproject.population.vo.GenderVO;


@Repository("genderDao")
public class GenderDaoImpl implements GenderDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;

	private static final String namespace = "com.webproject.population.mapper.GenderMapper";

	@Override
	public List<GenderVO> selectGender(HashMap<String, Object> params) {

		return sqlSession.selectList(namespace+".selectGender", params);
	}


}