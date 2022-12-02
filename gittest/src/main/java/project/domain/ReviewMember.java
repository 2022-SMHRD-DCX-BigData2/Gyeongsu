package project.domain;

import java.sql.Timestamp;

public class ReviewMember {

	private int review_no;
	private int activity_no;
	private int user_no;
	private String id;
	private String title;
	private String review;
	private int review_type;
	private int favor;
	private String mbti;
	private java.sql.Timestamp review_time;
	private String activity_title;
	
	// getter, setter
	
	public int getReview_no() {
		return review_no;
	}


	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}


	public int getActivity_no() {
		return activity_no;
	}


	public void setActivity_no(int activity_no) {
		this.activity_no = activity_no;
	}


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getReview() {
		return review;
	}


	public void setReview(String review) {
		this.review = review;
	}


	public int getReview_type() {
		return review_type;
	}


	public void setReview_type(int review_type) {
		this.review_type = review_type;
	}


	public int getFavor() {
		return favor;
	}


	public void setFavor(int favor) {
		this.favor = favor;
	}
	
	
	public String getMbti() {
		return mbti;
	}


	public void setMbti(String mbti) {
		this.mbti = mbti;
	}
	
	
	public java.sql.Timestamp getReview_time() {
		return review_time;
	}


	public void setReview_time(java.sql.Timestamp review_time) {
		this.review_time = review_time;
	}
	

	public String getActivity_title() {
		return activity_title;
	}


	public void setActivity_title(String activity_title) {
		this.activity_title = activity_title;
	}

	// 생성자
	
	// 전체
	public ReviewMember(int review_no, int activity_no, int user_no, String id, String title, String review,
			int review_type, int favor, String mbti, Timestamp review_time, String activity_title) {
		super();
		this.review_no = review_no;
		this.activity_no = activity_no;
		this.user_no = user_no;
		this.id = id;
		this.title = title;
		this.review = review;
		this.review_type = review_type;
		this.favor = favor;
		this.mbti = mbti;
		this.review_time = review_time;
		this.activity_title = activity_title;
	}
	
	// 각각 정보, 아이디, 댓글, 댓글타입, 좋아요
	public ReviewMember(int review_no, int activity_no, int user_no, String id, String review, int review_type,
			int favor, String mbti, Timestamp review_time, String activity_title) {
		super();
		this.review_no = review_no;
		this.activity_no = activity_no;
		this.user_no = user_no;
		this.id = id;
		this.review = review;
		this.review_type = review_type;
		this.favor = favor;
		this.mbti = mbti;
		this.review_time = review_time;
		this.activity_title = activity_title;
	}
	
	// 각각 정보, 아이디, 제목, 댓글, 댓글타입
	public ReviewMember(int review_no, int user_no, String id, String title, String review,
			int review_type, String mbti, Timestamp review_time, String activity_title) {
		super();
		this.review_no = review_no;
		this.user_no = user_no;
		this.id = id;
		this.title = title;
		this.review = review;
		this.review_type = review_type;
		this.mbti = mbti;
		this.review_time = review_time;
		this.activity_title = activity_title;
	}
	
	// 아무것도 없을때
	public ReviewMember() {
		super();
	}
		


	

	public ReviewMember(int review_no) {
		super();
		this.review_no = review_no;
	}


	public ReviewMember(int activity_no, int user_no, int favor) {
		super();
		this.activity_no = activity_no;
		this.user_no = user_no;
		this.favor = favor;
	}


	//toString
	@Override
	public String toString() {
		return "ReviewMember [review_no=" + review_no + ", activity_no=" + activity_no + ", user_no=" + user_no
				+ ", id=" + id + ", title=" + title + ", review=" + review + ", review_type=" + review_type + ", favor="
				+ favor + ",  mbti=" + mbti + "]";
	}


	
}
