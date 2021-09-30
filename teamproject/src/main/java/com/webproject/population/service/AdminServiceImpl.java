package com.webproject.population.service;

import java.util.List;

import com.webproject.population.mapper.AdminMapper;
import com.webproject.population.vo.MemberVO;

import lombok.Setter;

public class AdminServiceImpl implements AdminService {

	@Setter
	private AdminMapper adminMapper;

	@Override
	public List<MemberVO> findAllMembers() {
		
		return adminMapper.selectAllMembers();
		
	}

	
	
}