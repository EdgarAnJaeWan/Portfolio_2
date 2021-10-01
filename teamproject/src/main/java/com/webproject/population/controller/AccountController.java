
package com.webproject.population.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webproject.population.service.AuthService;
import com.webproject.population.vo.BoardVO;
import com.webproject.population.vo.MemberVO;

// Login
@Controller
@RequestMapping(path = { "/account" })
public class AccountController {

	@Autowired
	@Qualifier("authService")
	private AuthService authService;
	
	@GetMapping(path = { "/register" })
	public String showRegisterForm() {
		
		return "account/register";
	}
	
	@PostMapping(path = { "/register" })
	public String register(MemberVO member) {
		
		authService.registerMember(member);
		
		return "redirect:login.action";
		
	}
	
	@GetMapping(path = { "/login" })
	public String showLoginForm() {
		
		return "account/login";
				
	}
	
	@PostMapping(path = { "login" })
	public String login(String memberId, String passwd, HttpSession session) {
		
		MemberVO member = authService.findMemberByIdAndPasswd(memberId, passwd);
		System.out.println(member.getMemberId() + "/" + member.getEmail());
		
		//Mapper 구현 및 Service에서 호출하는 구문의 구현이 완성되면 아래의 주석을 풀고 임시 코드를 제거해 주세요
		
		if (member != null) {
			session.setAttribute("loginuser", member);
			
			return "redirect:/home";
		} else {
			return "redirect:/account/login";
		}
		
	}
	
	@GetMapping(path = { "/logout" })
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/home";
	}
	
	//loginuser로 회원 정보 보여주기
	//@GetMapping(path = { "/mypage" })
	//public String selectMemberInfo(MemberVO member) {
	//	
	//	return "account/mypage";
	//}
	
	//	@GetMapping(path = { "/mypage" })
	//	public String mypage(String memberId, HttpSession session) {
	//		  
	//	MemberVO mypageInfo = authService.selectMemberInfo(memberId);
	//	session.setAttribute("mypageuser", mypageInfo);
	//	
	//	return "account/mypage";	  
	//	}
	
	@GetMapping(path = { "/mypage" })
	public String mypage(HttpSession session, Model model) {
		  
		MemberVO loggedInUser = (MemberVO)session.getAttribute("loginuser");
		MemberVO mypageInfo = authService.selectMemberInfo(loggedInUser.getMemberId());
		
		model.addAttribute("member", mypageInfo); // 이 코드를 제거한 것 같습니다.
		System.out.println(mypageInfo);
		
		return "account/mypage";
	
	}
	
	@PostMapping(path = { "/update" })
	public String update(MemberVO member) {
		
		authService.updateMember(member);
		
		return "redirect:mypage";
	}
	
	@GetMapping(path = { "/delete" })
	public String delete(String memberId, HttpSession session) {
		
		authService.deleteMember(memberId);
		
		session.removeAttribute("loginuser"); // 로그아웃
		
		return "redirect:/home";
	}
		
	 
}
