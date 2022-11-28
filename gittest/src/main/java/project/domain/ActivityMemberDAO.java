package project.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import project.database.SqlSessionManager;
import project.domain.ActivityMember;

public class ActivityMemberDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 회원 전체 검색 기능 구현!
	public List<ActivityMember> selectAllact(){
		List<ActivityMember> actMemberList = null;
		
			try {
				// mapper.xml의 id값
				actMemberList = sqlSession.selectList("selectAllact");
				
				if(actMemberList != null) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 정보전체검색 성공!!");
					sqlSession.commit();
				} else {
					// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
					sqlSession.rollback();
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				// 빌렸던 Connection 객체를 반납
				sqlSession.close();
			}
			
		return actMemberList;
	}// 문화 전체 검색 끝!
			
	// 문화정보 하나 클릭해서 들어가기 기능 구현 테스트
	public ActivityMember selectActivity(ActivityMember login) {
		ActivityMember loginActivity = null;
		try {
			// mapper.xml의 id값
			loginActivity = sqlSession.selectOne("selectjustOne", login);
			
			System.out.println("로긴 엑티비티"+ loginActivity);
			if(loginActivity != null) {
				// 만약에 내가 원하는 일을 했으면 DB에 반영
				System.out.println("DAO : 선택 성공!!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		
		return loginActivity;
		
	}// 정보 선택 끝!!
}
