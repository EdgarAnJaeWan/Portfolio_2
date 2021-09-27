package com.webproject.population.service;


import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.mapper.AuthMapper;
import com.webproject.population.vo.MemberVO;

import lombok.Setter;

public class AuthServiceImpl implements AuthService {

   @Setter
   private AuthMapper authMapper;
   
   @Override
   public void registerMember(MemberVO member) {
      
      /*
       * // //passwd 암호화 (회원가입시) // String hashedPasswd =
       * Util.getHashedString(member.getPasswd(), "SHA-256"); //
       * member.setPasswd(hashedPasswd);
       */
      // MemberDao memberDao = new MemberDaoImpl();
      authMapper.insertMember(member);
      
   }
   
   @Override
   public MemberVO findMemberByIdAndPasswd(String memberId, String passwd) {
      
      HashMap<String, Object> params = new HashMap<String, Object>();
      params.put("memberId", memberId);
      params.put("passwd", passwd);
      
      MemberVO member = authMapper.selectMemberIdAndPasswd(params);
      //member = authMapper.아이디와패스워드로사용자를조회하는메서드(memberId, passwd); --> 이 메서드를 만들고 호출해야 합니다.
      
      return member;
   }

}