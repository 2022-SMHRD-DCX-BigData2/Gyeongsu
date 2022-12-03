package project.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.domain.UserMember;
import project.domain.UserMemberDAO;
import project.domain.ActivityMember;
import project.domain.ActivityMemberDAO;
import project.domain.RatioMember;
import project.domain.RatioMemberDAO;
import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;

public class InsertRatioCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[InsertRatioCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 세션에서 정보 가져와야함
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		ActivityMember loginActivity = (ActivityMember)session.getAttribute("loginActivity");
		ReviewMember loginFavor = (ReviewMember)session.getAttribute("loginFavor");
		RatioMemberDAO dao2 = new RatioMemberDAO();
		List<RatioMember> RatioMemberList = dao2.selectAllRatio();
		
		// 파라미터 수집
		int user_no = loginMember.getUser_no();
		String mbti = loginMember.getMbti();
		String gender = loginMember.getGender();
		int favor = loginFavor.getFavor();
		int activity_no = loginActivity.getActivity_no();
		
		int cnts = 0;
		
		System.out.println(RatioMemberList);
		for(RatioMember m:RatioMemberList){
			if(m.getActivity_no()==loginActivity.getActivity_no() && m.getUser_no()==loginMember.getUser_no()) {
				cnts++;
				}
			}
		 
		
		if(cnts == 0) {
			// 객체에 담아주기
			RatioMember posts = new RatioMember(activity_no, user_no, gender, mbti, favor);
			
			System.out.println("비율"+posts);
			
			// 3. DAO이용해서 2.의 내용을 넣어준다!
			RatioMemberDAO dao = new RatioMemberDAO();
			int cnt = dao.insertRatio(posts);
			
			// 4. DAO의 명령 후 처리
			if(cnt >0) {
				// 성공했으면 -> 성공페이지로 이동O
				response.sendRedirect("information.jsp");
				
			} else {
				// 실패했으면 -> 이동X
				System.out.println("회원가입 실패!");
			}
			
		}else {
			// 객체에 담아주기
			RatioMember posts = new RatioMember(activity_no, user_no, gender, mbti, favor);
			
			System.out.println("비율"+posts);
			
			// 3. DAO이용해서 2.의 내용을 넣어준다!
			RatioMemberDAO dao = new RatioMemberDAO();
			int cnt = dao.updateRatio(posts);
			
			// 4. DAO의 명령 후 처리
			if(cnt > 0) {
				System.out.println("회원정보수정 성공!");
				// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
				// 같은 이름으로 덮어쓰기 해야한다!
				session.setAttribute("loginRatio", posts);
				
				response.sendRedirect("information.jsp");
			}else {
				System.out.println("회원정보수정 실패!");
				response.sendRedirect("main2.jsp");
			}
			
		}
		
	}

}
