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
import project.domain.ActivityMemberDAO;
import project.domain.ReviewMember;
import project.domain.ReviewMemberDAO;
import project.domain.UserMember;
import project.domain.UserMemberDAO;

public class Favor_addCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[Favor_addCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. email, pw 파라미터 수집
		HttpSession session = request.getSession();
		UserMember loginMember = (UserMember)session.getAttribute("loginMember");
		ActivityMember loginActivity = (ActivityMember)session.getAttribute("loginActivity");
		ReviewMember loginFavor = (ReviewMember)session.getAttribute("loginFavor");
		
		
		String activity_title = loginActivity.getActivity_title();
		String activity_pic = loginActivity.getActivity_pic();
		String activity_ad = loginActivity.getActivity_ad();
		String activity_place = loginActivity.getActivity_place();
		String start_date = loginActivity.getStart_date();
		String finish_date = loginActivity.getFinish_date();
		String contents = loginActivity.getContents();
		int activity_type = loginActivity.getActivity_type();
		int region_type = loginActivity.getRegion_type();
		String mbti1 = loginActivity.getMbti1();
		String mbti2 = loginActivity.getMbti2();
		String mbti3 = loginActivity.getMbti3();
		String key_no1 = loginActivity.getKey_no1();
		String key_no2 = loginActivity.getKey_no2();
		String key_no3 = loginActivity.getKey_no3();
		String key_no4 = loginActivity.getKey_no4();
		String key_no5 = loginActivity.getKey_no5();
		String activity_age = loginActivity.getActivity_age();
		
		int activity_no = loginActivity.getActivity_no();
		int favor_add = loginActivity.getFavor_add();
		int favor = loginFavor.getFavor();
		
//		if(loginFavor==null) {
//			favor_add +=1;
//		}else 
		if(favor==1) {
			favor_add += 1;
		}else if(favor==0) {
			favor_add -=1;
		}
		
		
		
		// 2. Member 객체에 담아주기
		ActivityMember update = new ActivityMember(activity_no, activity_title, activity_pic, activity_ad, activity_place, start_date, finish_date, contents, activity_type, region_type, favor_add, mbti1, mbti2, mbti3, key_no1, key_no2, key_no3, key_no4, key_no5, activity_age);
		// 만약에 값을 확인하고 싶으면(진짜로 객체에 잘 담겨있는지 확인)
		
		System.out.println("업데이트favor_add" + update);
		
		
		// 3. DAO 객체 생성, 일할 메소드 만들기
		ActivityMemberDAO dao = new ActivityMemberDAO();
		int cnt = dao.updateFavor_add(update);
		
		// 4. MemberMapper.xml에 SQL문 만들기
		
		// 명령 후 처리
				if(cnt > 0) {
					System.out.println("회원정보수정 성공!");
					// 세션에 저장되어있는 정보가 수정전의 로그인 정보이기 때문에
					// 같은 이름으로 덮어쓰기 해야한다!
					session.setAttribute("loginActivity", update);
					
					response.sendRedirect("InsertRatioCon");
				}else {
					System.out.println("회원정보수정 실패!");
					response.sendRedirect("main2.jsp");
				}
		
	}

}
