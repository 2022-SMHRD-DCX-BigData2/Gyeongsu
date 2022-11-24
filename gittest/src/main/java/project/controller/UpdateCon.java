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
		
		// 어떤사람의 회원정보를 수정할지 email을 가져와야함
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		String id = loginMember.getId();
		int user_no = loginMember.getUser_no();
		
		// 파라미터 수집
		// pw, tel, address
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String mbti = request.getParameter("mbti");
		int key_no1 = Integer.parseInt(request.getParameter("key_no1"));
		int key_no2 = Integer.parseInt(request.getParameter("key_no2"));
		int key_no3 = Integer.parseInt(request.getParameter("key_no3"));
		
		// 받아온 데이터를 Member객체에 담아주기
		UserMember update = new UserMember(user_no, id, pw, name, mbti, key_no1, key_no2, key_no3);
		
		// DAO에 일할 메소드 만들기
		UserMemberDAO dao = new UserMemberDAO();
		int cnt = dao.updateMember(update);
		
		// 명령 후 처리
		if(cnt > 0) {
			System.out.println("회원정보수정 성공!");
			// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
			// 같은 이름으로 덮어쓰기 해야한다!
			session.setAttribute("loginMember", update);
			
			response.sendRedirect("main2.jsp");
		}else {
			System.out.println("회원정보수정 실패!");
			response.sendRedirect("update.jsp");
		}
		
	}

}
