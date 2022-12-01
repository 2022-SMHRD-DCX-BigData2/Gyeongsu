package project.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;

public class DeleteReviewCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[DeleteReviewCon2]");
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		ReviewMember loginReview = (ReviewMember)session.getAttribute("loginReview");
		int review_type = loginReview.getReview_type();
		
		// email 파라미터 수집
		int review_no = Integer.parseInt(request.getParameter("review_no"));
		
		// DAO에 일 할 메소드 만들기
		ReviewMemberDAO dao = new ReviewMemberDAO();
		int cnt = dao.deleteReview(review_no);
		
		// 명령 후 처리
		if(cnt>0) {
			System.out.println("회원삭제 성공!!");
			if(review_type == 2) {				
				// 성공했으면 -> 성공페이지로 이동O
				response.sendRedirect("mypage.jsp#tab13");
				}else if(review_type == 1){
				response.sendRedirect("mypage.jsp#tab12");
			}
		}else {
			System.out.println("회원삭제 실패!!");
		}
		
	}

}
