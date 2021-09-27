package com.webproject.population.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webproject.population.service.AuthService;
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
		
		//Mapper 구현 및 Service에서 호출하는 구문의 구현이 완성되면 아래의 주석을 풀고 임시 코드를 제거해 주세요
		
		if (member != null) {
			session.setAttribute("loginuser", member);
			
			return "redirect:/home";
		} else {
			return "redirect:/account/login";
		}
		
		/*
		 * // 임시코드 return "redirect:/home";
		 */
	}
	
	@GetMapping(path = { "/logout" })
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/home";
	}
}