package com.webproject.population.service;

import com.webproject.population.vo.MemberVO;

public interface AuthService {

	void registerMember(MemberVO member);

	MemberVO findMemberByIdAndPasswd(String memberId, String passwd);

	//MemberVO selectMemberInfo();

}
