package com.itwill.guest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.guest.Guest;
import com.itwill.guest.GuestService;
import com.itwill.summer.mvc.Controller;

/*
 * - 클라이언트요청한개를 처리하는 비즈니스로직을 담고있는 객체
 * - DispatcherServlet객체가 호출하는 handleRequest메쏘드를가짐
 * - handleRequest메쏘드가호출되면 DispatcherServlet객체에 forwardPath를 반환해줌
 */
public class GuestModifyActionController implements Controller {
	private GuestService guestService;
	public GuestModifyActionController() {
		guestService = new GuestService();
	}
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String forwardPath = "";
		/*
		 * 1.GET방식이면 user_main.do로 redirection
		 * 2.파라메타받기
		 * 3.GuestService객체사용해서 수정
		 * 4.guest_view.do 로 redirection
		 */
		try {
			if(request.getMethod().equalsIgnoreCase("GET")) {
				forwardPath = "redirect:guest_main.do";
			}else {
				String guestNo = request.getParameter("guest_no");
				String guestName = request.getParameter("guest_name");
				String guesthome = request.getParameter("guest_homepage");
				String guestEmail = request.getParameter("guest_email");
				String guestTitle = request.getParameter("guest_title");
				String guestContent = request.getParameter("guest_content");
				
			int Updateguest = guestService.updateGuest(new Guest(Integer.parseInt(guestNo), guestName, null, guestEmail, guesthome, guestTitle, guestContent));
			forwardPath = "redirect:guest_view.do?guest_no="+guestNo;
			
			}
			
		}catch (Exception e) {
			e.printStackTrace();
			forwardPath = "forward:/WEB-INF/views/guest_error.jsp";
		}
		
		
		return forwardPath;
	}
}
