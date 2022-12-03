package project.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import project.database.SqlSessionManager;
import project.domain.UserMember;

public class UserMemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 회원가입 기능 구현
	public int insertMember(UserMember joinMember) {
		int cnt = 0;
		try {
			// mapper.xml의 id값
			cnt = sqlSession.insert("insertMember", joinMember);
			
			if(cnt > 0) {
				// 만약에 내가 원하는 일을 했으면 DB에 반영
				System.out.println("DAO : 회원가입 성공!!");
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
	
	// 로그인 기능 구현
		public UserMember selectMember(UserMember login) {
			UserMember loginMember = null;
			try {
				// mapper.xml의 id값
				loginMember = sqlSession.selectOne("selectMember", login);
				if(loginMember != null) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 로그인 성공!!");
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
			
			return loginMember;
			
		}// 로그인 끝!!
		
		// 회원정보 수정 기능 구현
		public int updateMember(UserMember update) {
			int cnt = 0;
			try {
				// mapper.xml의 id값
				cnt = sqlSession.update("updateMember", update);
				
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
		} // 회원정보 수정 끝!!		
		
		// 회원 전체 검색 기능 구현!
		public List<UserMember> selectAll(){
			List<UserMember> MemberList = null;
			
				try {
					// mapper.xml의 id값
					MemberList = sqlSession.selectList("selectAll");
					
					if(MemberList != null) {
						// 만약에 내가 원하는 일을 했으면 DB에 반영
						System.out.println("DAO : 회원전체검색 성공!!");
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
				
			return MemberList;
		}// 회원 전체 검색 끝!
		
		// 관리자 - 회원삭제 기능구현
		public int deleteMember(String id) {
			int cnt = 0;
			try {
				// mapper.xml의 id값
				cnt = sqlSession.delete("deleteMember", id);
				
				if(cnt > 0) {
					// 만약에 내가 원하는 일을 했으면 DB에 반영
					System.out.println("DAO : 회원삭제 성공!!");
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
		}// 회원삭제 끝!
		
		
	
}
