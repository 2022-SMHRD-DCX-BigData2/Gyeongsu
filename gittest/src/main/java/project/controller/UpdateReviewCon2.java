package project.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;

public class UpdateReviewCon2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[UpdateReviewCon2]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 어떤사람의 회원정보를 수정할지 email을 가져와야함
		HttpSession session = request.getSession();
		ReviewMember loginReview = (ReviewMember)session.getAttribute("loginReview");
		int review_no = loginReview.getReview_no();
		int activity_no = loginReview.getActivity_no();
		int user_no = loginReview.getUser_no();
		String id = loginReview.getId();
		int review_type = loginReview.getReview_type();
		int favor = loginReview.getFavor();
		String mbti = loginReview.getMbti();
		Timestamp review_time = loginReview.getReview_time();
		String activity_title = loginReview.getActivity_title();
		
		// 파라미터 수집
		// pw, tel, address
		String title = request.getParameter("title");
		String review = request.getParameter("review");
		
		// 받아온 데이터를 Member객체에 담아주기
		ReviewMember update = new ReviewMember(review_no, activity_no, user_no, id, title, review, review_type, favor, mbti, null, activity_title);
		
		// DAO에 일할 메소드 만들기
		ReviewMemberDAO dao = new ReviewMemberDAO();
		int cnt = dao.updateReview(update);
		
		// 명령 후 처리
		if(cnt > 0) {
			System.out.println("리뷰정보수정 성공!");
			// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
			// 같은 이름으로 덮어쓰기 해야한다!
			session.setAttribute("loginReview", update);
			
			if(review_type == 2) {
				
				// 성공했으면 -> 성공페이지로 이동O
				response.sendRedirect("mypage.jsp#tab13");
				}else if(review_type == 1){
				response.sendRedirect("mypage.jsp#tab12");
				}
		}else {
			System.out.println("회원정보수정 실패!");
			response.sendRedirect("updatepost2.jsp");
		}
		
	}

}
