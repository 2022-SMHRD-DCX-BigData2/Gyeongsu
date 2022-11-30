package project.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import project.database.SqlSessionManager;
import project.domain.ReviewMember;

public class ReviewMemberDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 댓글 기능 구현
		public int insertReview(ReviewMember joinReview) {
			int cnt = 0;
			try {
				// mapper.xml의 id값
				cnt = sqlSession.insert("insertReview", joinReview);
				
				if(cnt > 0) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 댓글추가 성공!!");
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
			
		}// 댓글 입력 끝!
		
		// 댓글 전체 검색 기능 구현!
		public List<ReviewMember> selectAllRev(){
			List<ReviewMember> revMemberList = null;
			
				try {
					// mapper.xml의 id값
					revMemberList = sqlSession.selectList("selectAllRev");
					
					if(revMemberList != null) {
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
				
			return revMemberList;
		}// 문화 전체 검색 끝!
		
		
		// 포스트 기능 구현
		public int insertPost(ReviewMember joinPost) {
			int cnt = 0;
			try {
				// mapper.xml의 id값
				cnt = sqlSession.insert("insertReview", joinPost);
				
				if(cnt > 0) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 포스트추가 성공!!");
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
			
		}// 포스트 입력 끝!
		
		// 포스트 하나 클릭해서 들어가기 기능 구현 테스트
		public ReviewMember selectReview(ReviewMember login) {
			ReviewMember loginReview = null;
			try {
				// mapper.xml의 id값
				loginReview = sqlSession.selectOne("selectReview", login);
				
				System.out.println("로긴 엑티비티"+ loginReview);
				if(loginReview != null) {
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
			
			return loginReview;
			
		}// 정보 선택 끝!!
}
