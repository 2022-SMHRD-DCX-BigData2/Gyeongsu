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
			
		}// 회원가입 끝!
}
