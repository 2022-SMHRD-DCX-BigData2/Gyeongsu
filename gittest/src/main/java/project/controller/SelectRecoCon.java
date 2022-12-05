package project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.RecoMember;
import project.domain.RecoMemberDAO;
import project.domain.UserMember;

public class SelectRecoCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[SelectRecoCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		
		// 1. email, pw 파라미터 수집
		int user_no = loginMember.getUser_no();
		
		// 2. Member 객체에 담아주기
		RecoMember login = new RecoMember(user_no);
		// 만약에 값을 확인하고 싶으면(진짜로 객체에 잘 담겨있는지 확인)
		
		
		// 3. DAO 객체 생성, 일할 메소드 만들기
		RecoMemberDAO dao = new RecoMemberDAO();
		RecoMember loginReco = dao.selectReco(login);
		
		// 4. MemberMapper.xml에 SQL문 만들기
		
		// 5. 명령 후 처리
		// 로그인을 성공했으면 
		// 세션에다가 로그인 정보를 저장하고, 페이지 이동은 다시 main.jsp로 이동
		if(loginReco != null) {
			System.out.println("selectReco : 정보 선택 성공!!");
			// 세션 객체 생성
			session.setAttribute("loginReco", loginReco);

 		} else {
 			// 로그인 실패하면 
 			// 콘솔창에 실패 출력하고, main.jsp로 이동
			System.out.println("selectReco : 정보 선택 실패!!");
			
		}
		
		response.sendRedirect("main2.jsp");
		
	}

}