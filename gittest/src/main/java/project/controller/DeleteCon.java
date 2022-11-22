package project.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import project.domain.UserMemberDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[DeleteCon]");
		
		// email 파라미터 수집
		String id = request.getParameter("id");
		
		// DAO에 일 할 메소드 만들기
		UserMemberDAO dao = new UserMemberDAO();
		int cnt = dao.deleteMember(id);
		
		// 명령 후 처리
		if(cnt>0) {
			System.out.println("회원삭제 성공!!");
		}else {
			System.out.println("회원삭제 실패!!");
		}
		
		// 다시 select.jsp로 이동할 수 있도록
		response.sendRedirect("select.jsp");
	}

}
