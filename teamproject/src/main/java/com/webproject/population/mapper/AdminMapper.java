package com.webproject.population.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.MemberVO;

@Mapper
public interface AdminMapper {

	List<MemberVO> selectAllMembers();
}