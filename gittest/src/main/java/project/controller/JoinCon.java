package project.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String mbti = request.getParameter("mbti");
		int key_no1 = Integer.parseInt(request.getParameter("key_no1"));
		int key_no2 = Integer.parseInt(request.getParameter("key_no2"));
		int key_no3 = Integer.parseInt(request.getParameter("key_no3"));
		
		
		// 2. id, pw를 MavenMember 객체에 담아주기
		UserMember join = new UserMember(user_no, id, pw, name, mbti, key_no1, key_no2, key_no3);
		
		// 3. DAO이용해서 2.의 내용을 넣어준다!
		UserMemberDAO dao = new UserMemberDAO();
		int cnt = dao.insertMember(join);
		
		// 4. DAO의 명령 후 처리
		if(cnt >0) {
			// 성공했으면 -> 성공페이지로 이동O
			response.sendRedirect("Joinsuccess.html");
		} else {
			// 실패했으면 -> 이동X
			System.out.println("회원가입 실패!");
		}
	}

}
