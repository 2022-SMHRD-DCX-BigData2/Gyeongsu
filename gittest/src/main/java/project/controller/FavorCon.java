package project.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.ActivityMember;
import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;
import project.domain.UserMember;
import project.domain.UserMemberDAO;

public class FavorCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[FavorCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. email, pw 파라미터 수집
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		ActivityMember loginActivity = (ActivityMember)session.getAttribute("loginActivity");
		
		int activity_no = loginActivity.getActivity_no();
		int user_no = loginMember.getUser_no();
		int favor = Integer.parseInt(request.getParameter("favor"));
		
		
		// 2. Member 객체에 담아주기
		ReviewMember update = new ReviewMember(activity_no, user_no, favor);
		// 만약에 값을 확인하고 싶으면(진짜로 객체에 잘 담겨있는지 확인)
		
		System.out.println("업데이트favor" + update);
		
		
		// 3. DAO 객체 생성, 일할 메소드 만들기
		ReviewMemberDAO dao = new ReviewMemberDAO();
		int cnt = dao.updateFavor(update);
		
		// 4. MemberMapper.xml에 SQL문 만들기
		
		// 명령 후 처리
				if(cnt > 0) {
					System.out.println("회원정보수정 성공!");
					// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
					// 같은 이름으로 덮어쓰기 해야한다!
					session.setAttribute("loginFavor", update);
					
					response.sendRedirect("Favor_addCon");
				}else {
					System.out.println("회원정보수정 실패!");
					response.sendRedirect("main2.jsp");
				}
		
	}

}
