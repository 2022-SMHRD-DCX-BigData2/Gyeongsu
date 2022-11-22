package project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 세션 객체 생성
		HttpSession session = request.getSession();
		
		// 세션에 저장된 로그인 정보를 삭제
		session.removeAttribute("loginMember");
		
		// 다시 main.jsp로 이동
		response.sendRedirect("main.jsp");
	}

}
