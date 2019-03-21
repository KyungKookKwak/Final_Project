package com.kh.spring.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.spring.member.model.vo.Member;

public class LoginCheckInterceptor extends HandlerInterceptorAdapter {

	Logger logger = Logger.getLogger(getClass());
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Member memberLoggedIn = (Member)session.getAttribute("memberLoggedIn");
		if(logger.isDebugEnabled()) { 
			if(memberLoggedIn == null) {
				request.setAttribute("loc", "/member/memberMoveLogin.do");
				request.setAttribute("msg", "로그인후에 이용하세요");
				request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp").forward(request, response);					
				return false;
			}
			
		}
		
		return super.preHandle(request, response, handler);
		
	}	
}
