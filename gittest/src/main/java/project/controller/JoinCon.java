package project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.UserMember;
import project.domain.UserMemberDAO;

// we-xml에 있는 url-pattern값과 일치하도록 주의
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[JoinCon]");
		
		// 0. post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		// 1. id, pw 파라미터 수집
		int user_no = Integer.parseInt(request.getParameter("user_no"));
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String[] keyword = request.getParameterValues("keyword");
		String mbti_1 = request.getParameter("mbti_1");
		String mbti_2 = request.getParameter("mbti_2");
		String mbti_3 = request.getParameter("mbti_3");
		String mbti_4 = request.getParameter("mbti_4");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		
		for (String ky : keyword) {
			System.out.print(keyword + " ");
		}
		
		String key_no1 = keyword[0];
		String key_no2 = keyword[1];
		String key_no3 = keyword[2];
		String key_no4 = keyword[3];
		
		String mbti = mbti_1 + mbti_2 + mbti_3 + mbti_4;
		
		
		// 2. id, pw를 MavenMember 객체에 담아주기
		UserMember join = new UserMember(user_no, id, pw, name, mbti, key_no1, key_no2, key_no3, key_no4, gender, age);
		
		
		System.out.println("mbti는"+mbti+" 조인은"+ join);
		
		// 3. DAO이용해서 2.의 내용을 넣어준다!
		UserMemberDAO dao = new UserMemberDAO();
		int cnt = dao.insertMember(join);
		
		// 4. DAO의 명령 후 처리
		if(cnt >0) {
			// 성공했으면 -> 성공페이지로 이동O
			 response.setCharacterEncoding("utf-8");
	         HttpSession session = request.getSession();
	         session.setAttribute("join","joined");
			response.sendRedirect("main2.jsp");
			
		} else {
			// 실패했으면 -> 이동X
			System.out.println("회원가입 실패!");
		}
	}

}
