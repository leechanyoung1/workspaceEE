package com.itwill.model2.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.summer.mvc.Controller;

public class LoginController implements Controller{
	@Override
	public String handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) {
		
		return "forward:/WEB-INF/views/login_form.jsp";
	}
}
