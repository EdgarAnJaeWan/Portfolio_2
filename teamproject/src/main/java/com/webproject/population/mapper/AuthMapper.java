package com.webproject.population.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.webproject.population.vo.MemberVO;

//BoardMapper.xml 파일과 매핑되는 인터페이스 정의 -> Spring이 Mapper 객체를 자동으로 생성
//-> BoardMapper.xml과 경로와 이름이 일치하도록 작성

//1. 
@Mapper // auth-context.xml 파일에 

      // <bean id="authMapper"를 등록하는 것과 같은 의미 
public interface AuthMapper {
   
   void insertMember(MemberVO member);

   MemberVO selectMemberIdAndPasswd(HashMap<String, Object> params);
   
   //MemberVO selectMemberInfo(String string);
   
}