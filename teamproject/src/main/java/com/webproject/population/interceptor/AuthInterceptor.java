package com.webproject.population.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.webproject.population.vo.MemberVO;

public class AuthInterceptor implements HandlerInterceptor{

	// Controller 호출 전에 호출되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler)
			throws Exception {
		

		HttpSession session = req.getSession();

		String uri = req.getRequestURI(); // 현재 요청의 전체 경로 문자열

		// 로그인 한 사용자인 경우 세션 객체에 loginuser 라는 이름으로 데이터가 저장되어 있으므로 데이터 읽어 오기
		MemberVO member = (MemberVO) session.getAttribute("loginuser");

		boolean invalid = false;
		if (uri.contains("/board/")) { // 경로에 /board/가 포함된 경우
			/*
			 * if (member == null) { // 로그인 하지 않은 경우 invalid = true; }
			 */
			if (!uri.contains("list") && member == null) {
				   invalid = true;
				}
		}
		if (invalid) {
			resp.sendRedirect("/population/account/login.action");
			return false;// 현재 요청 처리 중단
		}
		
		return true; // 계속 진행
	}
	
	// Controller 호출 후에 호출되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
	}

	// View 처리 후에 호출되는 메서드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
	}

}
