package project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import project.domain.ActivityMember;
import project.domain.ActivityMemberDAO;

public class SearchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		ActivityMemberDAO dao = new ActivityMemberDAO();
//		List<ActivityMember> actmemberList = dao.selectAllact();
//		ArrayList<String> arrList = new ArrayList<String>();
//		List<ActivityMember> wantList = new ArrayList<ActivityMember>();
//		
//		for(ActivityMember m:actmemberList){
//			arrList.add(m.getActivity_title());
//        }
//		
//		Set<String> set = new HashSet<String>(arrList);
//		for (String str : set) {
//			int countmbti = Collections.frequency(arrList, str);
//			if(countmbti > a){
//				
//			}
//			
//		}
		
		System.out.println("[SearchCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String searchcontent = request.getParameter("searchcontent");
		System.out.println("내용 : " + searchcontent);
		
		ActivityMember memberBoardSearch = new ActivityMember(searchcontent);
		ActivityMemberDAO dao3 = new ActivityMemberDAO();
	      
	     // 가변길이리스트 생성
	     List<ActivityMember> wantList = new ArrayList<ActivityMember>();
		
	     wantList = dao3.searchTitle(memberBoardSearch);
		
		// 5. 명령 후 처리
		// 로그인을 성공했으면 
		// 세션에다가 로그인 정보를 저장하고, 페이지 이동은 다시 main.jsp로 이동
		if(wantList != null) {
			System.out.println("searchTitle : 정보 선택 성공!!");
			// 세션 객체 생성
			HttpSession session = request.getSession();
		      session.setAttribute("titleList", wantList);
		      response.sendRedirect("listselect.jsp");

 		} else {
 			// 로그인 실패하면 
 			// 콘솔창에 실패 출력하고, main.jsp로 이동
			System.out.println("searchTitle : 정보 선택 실패!!");
			
		}
		
		
	}

}
