package org.ibitu.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ibitu.domain.UserVO;
import org.ibitu.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Inject
	private UserService service;
	
	private void saveDest(HttpServletRequest req) {
		String uri = req.getRequestURI();

		String query = req.getQueryString();

		System.out.println("------------d1-------------");
		System.out.println(query);
		System.out.println("------------d1-------------");


		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}
		System.out.println("------------d-------------");
		System.out.println(query);
		System.out.println("------------d-------------");

		if (req.getMethod().equals("GET")) {
			logger.info("dest: " + (uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute("login") == null) {
			logger.info("current user is not logined");

			saveDest(request);
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null){
				UserVO userVO = service.checkLoginBefore(loginCookie.getValue());
				
			
				logger.info("USERVO: "+userVO);
				
				if(userVO != null){
					session.setAttribute("login", userVO);
					return true;
				}
			}

			response.sendRedirect("/user/login");
			return false;
		}
		return true;
	}

}
