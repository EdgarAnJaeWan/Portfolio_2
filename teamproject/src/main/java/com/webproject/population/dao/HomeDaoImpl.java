package com.webproject.population.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.webproject.population.vo.HomeVO;

@Repository
public class HomeDaoImpl implements HomeDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate Sessiontemp;
	
	private static final String namespace = "com.webproject.population.mapper.HomeMapper";
	
	@Override
	public List<HomeVO> selectHome(HashMap<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return Sessiontemp.selectList(namespace+".selectHome", param);
	}
	
	

}
