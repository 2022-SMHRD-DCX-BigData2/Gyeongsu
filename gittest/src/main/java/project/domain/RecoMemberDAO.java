package project.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import project.database.SqlSessionManager;

public class RecoMemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	
	// 추천 전체 검색 기능 구현!
	public List<RecoMember> selectAllReco(){
		List<RecoMember> RecommendList = null;
		
			try {
				// mapper.xml의 id값
				RecommendList = sqlSession.selectList("selectAllReco");
				
				if(RecommendList != null) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 추천전체검색 성공!!");
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
			
		return RecommendList;
	}// 회원 전체 검색 끝!
	
	// 포스트 하나 클릭해서 들어가기 기능 구현 테스트
	public RecoMember selectReco(RecoMember login) {
		RecoMember loginReco = null;
		try {
			// mapper.xml의 id값
			loginReco = sqlSession.selectOne("selectReco", login);
			
			System.out.println("로긴 엑티비티"+ loginReco);
			if(loginReco != null) {
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
		
		return loginReco;
		
	}// 정보 선택 끝!!
}
