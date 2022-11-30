package project.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.UserMember;
import project.domain.UserMemberDAO;
import project.domain.ActivityMember;
import project.domain.ActivityMemberDAO;
import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;

public class PostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[PostCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 세션에서 정보 가져와야함
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		String id = loginMember.getId();
		int user_no = loginMember.getUser_no();
		String mbti = loginMember.getMbti();
		
		// 파라미터 수집
		int review_no = Integer.parseInt(request.getParameter("review_no"));
		String review = request.getParameter("review");
		int review_type = Integer.parseInt(request.getParameter("review_type"));
		int favor = Integer.parseInt(request.getParameter("favor"));
		String title = request.getParameter("title");
		String review_time = request.getParameter("review_time");
		int activity_no = Integer.parseInt(request.getParameter("activity_no"));
		String activity_title = request.getParameter("activity_title");
		
		// 객체에 담아주기
		ReviewMember posts = new ReviewMember(review_no, activity_no, user_no, id, title, review, review_type, favor, mbti, null, activity_title);
		
		System.out.println("리뷰는"+posts);
		
		// 3. DAO이용해서 2.의 내용을 넣어준다!
		ReviewMemberDAO dao = new ReviewMemberDAO();
		int cnt = dao.insertPost(posts);
		
		// 4. DAO의 명령 후 처리
		if(cnt >0) {
			if(id.equals("admin")) {
				
			// 성공했으면 -> 성공페이지로 이동O
			response.sendRedirect("bulletinBoard.jsp");
			}else {
			response.sendRedirect("bulletinBoard2.jsp");
			}
		} else {
			// 실패했으면 -> 이동X
			System.out.println("회원가입 실패!");
		}
	}

}
