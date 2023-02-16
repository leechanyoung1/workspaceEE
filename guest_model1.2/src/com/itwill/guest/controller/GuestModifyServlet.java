package com.itwill.guest.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.Guest;
import com.itwill.guest.GuestService;

/**
 * Servlet implementation class GuestModifyServlet
 */
//@WebServlet("/guest_modify_form.do")
public class GuestModifyServlet extends HttpServlet {
	private GuestService guestService;
	public GuestModifyServlet() throws Exception {
		guestService = new GuestService();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="";
		
		
try {
			
			if(request.getMethod().equalsIgnoreCase("GET")){
				//response.sendRedirect("guest_main.do");
				forwardPath="redirect:guest_main.do";
			}else {
				String guest_noStr=request.getParameter("guest_no");
				Guest guest=
						guestService.findByNo(Integer.parseInt(guest_noStr));
				request.setAttribute("guest",guest);
				forwardPath = "forward:/WEB-INF/views/guest_modify_form.jsp";
			}
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath="forward:/WEB-INF/views/guest_error.jsp";
		}
		
		
		/**************forward or redirect***********/
		/*
		 * forward --->forward:/WEB-INF/views/guest_xxx.jsp
		 * redirect --->redirect:guest_xxx.do
		 */
		String[] pathArray = forwardPath.split(":");//:기준으로 문자열을 배열로 저장함
		String forwardOrRedirect = pathArray[0];
		String path = pathArray[1];
		if(forwardOrRedirect.equals("redirect")) {
			//redirect
			response.sendRedirect(path);
		}else {
			//forwarding
			RequestDispatcher rd = request.getRequestDispatcher(forwardPath);
			rd.forward(request, response);
		}
		/*************************************/
	}

}