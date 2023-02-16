package com.itwill.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MimeTypeImageResponseServlet
 */
@WebServlet("/response_mp3.do")
public class MimeTypeMp3ResponseServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.응답객체MIME타입설정
		 */
		response.setContentType("audio/mpeg");
		//response.setContentType("image/gif");
		/*
		 * 2.브라우저와 연결된 출력스트림생성
		 */
		OutputStream out = response.getOutputStream();
		ServletContext context = this.getServletContext();
		String imageFilePath = context.getRealPath("/images/test.mp3");
		FileInputStream imageIn = new FileInputStream(imageFilePath);
		
		while(true) {
			int readByte =imageIn.read();
			if(readByte==-1)break;
			out.write(readByte);
		}
			imageIn.close();
			out.close();
		
	}

}
