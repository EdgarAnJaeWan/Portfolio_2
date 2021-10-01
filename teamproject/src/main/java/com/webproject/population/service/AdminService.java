package com.webproject.population.service;

import java.util.List;


import com.webproject.population.vo.MemberVO;

public interface AdminService {

	List<MemberVO> findAllMembers();

	void updateMember(MemberVO member);

	MemberVO findMemberByMemberId(String memberId);

	void updatemember(MemberVO member);

	void deletemember(String memberId);

}