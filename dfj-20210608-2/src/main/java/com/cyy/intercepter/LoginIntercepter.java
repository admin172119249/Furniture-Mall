package com.cyy.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginIntercepter extends HandlerInterceptorAdapter {
	private String[] ingore_url = { "buyerLogin.do", "buyerRegSave.do",
			"goodsDetail.do", "queryGoods.do" ,"yzmImg.do","buyerLogin1.do","buyerChange.do","forgetpassword.do","goodsDetail1.do","emailSend.do","emailyzcode.do"};

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		System.out.println("afterCompletion");
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("postHandle");
	}

	/**
	 * 在其它的业务处理之间，进行拦截，preHandle
	 */
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 如果是登录
		System.out.println("preHandle");
		HttpSession session = request.getSession();
		Object loginByr = session.getAttribute("loginByr");
		if (loginByr == null) {// 表示没有登录过
			String url = request.getRequestURL().toString();
			for (String u : ingore_url) {
				if (url.contains(u)) {
					return true;
				}
			}
			response.sendRedirect("login.jsp");
			return false;
		} else {
			return true;
		}
	}
}
