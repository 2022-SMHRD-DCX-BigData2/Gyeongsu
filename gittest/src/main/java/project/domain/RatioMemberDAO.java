package project.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import project.database.SqlSessionManager;

public class RatioMemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	
	// 비율가입 기능 구현
	public int insertRatio(RatioMember joinRatio) {
		int cnt = 0;
		try {
			// mapper.xml의 id값
			cnt = sqlSession.insert("insertRatio", joinRatio);
			
			if(cnt > 0) {
				// 만약에 내가 원하는 일을 했으면 DB에 반영
				System.out.println("DAO : 비율가입 성공!!");
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
		
		return cnt;
		
	}// 비율가입 끝!
	
	// 비율 전체 검색 기능 구현!
			public List<RatioMember> selectAllRatio(){
				List<RatioMember> RatioMemberList = null;
				System.out.println("들어옴");
					try {
						// mapper.xml의 id값
						RatioMemberList = sqlSession.selectList("selectAllRatio");
						
						if(RatioMemberList != null) {
							// 만약에 내가 원하는 일을 했으면 DB에 반영
							System.out.println("DAO : 비율전체검색 성공!!");
							sqlSession.commit();
						} else {
							System.out.println("실패");
							// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
							sqlSession.rollback();
						}
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						// 빌렸던 Connection 객체를 반납
						sqlSession.close();
					}
					
				return RatioMemberList;
			}// 비율 전체 검색 끝!
			
			// 비율정보 수정 기능 구현
			public int updateRatio(RatioMember update) {
				int cnt = 0;
				try {
					// mapper.xml의 id값
					cnt = sqlSession.update("updateRatio", update);
					
					if(cnt > 0) {
						// 만약에 내가 원하는 일을 했으면 DB에 반영
						System.out.println("DAO : 회원정보수정 성공!!");
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
			}
	
}
