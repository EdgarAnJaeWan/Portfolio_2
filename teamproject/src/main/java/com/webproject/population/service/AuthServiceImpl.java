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
       * // //passwd �븫�샇�솕 (�쉶�썝媛��엯�떆) // String hashedPasswd =
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
      //member = authMapper.�븘�씠�뵒���뙣�뒪�썙�뱶濡쒖궗�슜�옄瑜쇱“�쉶�븯�뒗硫붿꽌�뱶(memberId, passwd); --> �씠 硫붿꽌�뱶瑜� 留뚮뱾怨� �샇異쒗빐�빞 �빀�땲�떎.
      
      return member;
   }

}