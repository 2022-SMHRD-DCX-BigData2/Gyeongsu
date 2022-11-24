package project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.UserMember;
import project.domain.UserMemberDAO;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[LoginCon]");
		// 0. post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 1. email, pw 파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 2. Member 객체에 담아주기
		UserMember login = new UserMember(id, pw);
		// 만약에 값을 확인하고 싶으면(진짜로 객체에 잘 담겨있는지 확인)
		
		// 3. DAO 객체 생성, 일할 메소드 만들기
		UserMemberDAO dao = new UserMemberDAO();
		UserMember loginMember = dao.selectMember(login);
		
		// 4. MemberMapper.xml에 SQL문 만들기
		
		// 5. 명령 후 처리
		// 로그인을 성공했으면 
		// 세션에다가 로그인 정보를 저장하고, 페이지 이동은 다시 main.jsp로 이동
		if(loginMember != null) {
			System.out.println("LoginCon : 로그인 성공!!");
			// 세션 객체 생성
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);

 		} else {
 			// 로그인 실패하면 
 			// 콘솔창에 실패 출력하고, main.jsp로 이동
			System.out.println("LoginCon : 로그인 실패!!");
			
		}
		
		response.sendRedirect("main2.jsp");
		
	}

}
