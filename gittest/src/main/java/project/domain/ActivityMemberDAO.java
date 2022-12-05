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
	
	// 전체좋아요정보 수정 기능 구현
	public int updateFavor_add(ActivityMember updateFavor_add) {
		int cnt = 0;
		try {
			// mapper.xml의 id값
			cnt = sqlSession.update("updateFavor_add", updateFavor_add);
			
			if(cnt > 0) {
				// 만약에 내가 원하는 일을 했으면 DB에 반영
				System.out.println("DAO : 리뷰정보수정 성공!!");
				sqlSession.commit();
			} else {
				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸떤 Connection 객체를 반납
			sqlSession.close();
		}
		
		return cnt;
	} // 전체좋아요정보 수정 끝!!
	
	
	public List<ActivityMember> searchTitle(ActivityMember searchcontent) {
        
        List<ActivityMember> result = null;
        
        try {
           result = sqlSession.selectList("searchTitle", searchcontent);
           
           if (result != null) {
              System.out.println("DAO : 제목찾기 성공!!");
           } else {
           }
           
        } catch (Exception e) {
           e.printStackTrace();
        } finally {
           sqlSession.close();
        }
        
        return result;
        
     }
}
