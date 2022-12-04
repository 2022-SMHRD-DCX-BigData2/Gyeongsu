package project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.UserMember;
import project.domain.UserMemberDAO;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[UpdateCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		int user_no = loginMember.getUser_no();
		String gender = loginMember.getGender();
		
		
		
		// 파라미터 수집
		// pw, tel, address		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String[] keyword = request.getParameterValues("keyword");
		String mbti_1 = request.getParameter("mbti_1");
		String mbti_2 = request.getParameter("mbti_2");
		String mbti_3 = request.getParameter("mbti_3");
		String mbti_4 = request.getParameter("mbti_4");
		String age = request.getParameter("age");
		
		for (String ky : keyword) {
			System.out.print(keyword + " ");
		}
		
		String key_no1 = keyword[0];
		String key_no2 = keyword[1];
		String key_no3 = keyword[2];
		String key_no4 = keyword[3];
		
		String mbti = mbti_1 + mbti_2 + mbti_3 + mbti_4;
		
		// 받아온 데이터를 Member객체에 담아주기
		UserMember update = new UserMember(user_no, id, pw, name, mbti, key_no1, key_no2, key_no3, key_no4, gender, age);
		
		// DAO에 일할 메소드 만들기
		UserMemberDAO dao = new UserMemberDAO();
		int cnt = dao.updateMember(update);
		
		// 명령 후 처리
		if(cnt > 0) {
			System.out.println("회원정보수정 성공!");
			// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
			// 같은 이름으로 덮어쓰기 해야한다!
			session.setAttribute("loginMember", update);
			
			response.sendRedirect("mypage.jsp");
		}else {
			System.out.println("회원정보수정 실패!");
			response.sendRedirect("main2.jsp");
		}
		
	}

}
