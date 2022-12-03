package project.domain;

public class RatioMember {

	
	private int activity_no;
	private int user_no;
	private String gender;
	private String mbti;
	private int favor;
	
	public RatioMember() {
		super();
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMbti() {
		return mbti;
	}
	public void setMbti(String mbti) {
		this.mbti = mbti;
	}
	public int getFavor() {
		return favor;
	}
	public void setFavor(int favor) {
		this.favor = favor;
	}
	
	
	
	public RatioMember(int activity_no, int user_no, String gender, String mbti, int favor) {
		super();
		this.activity_no = activity_no;
		this.user_no = user_no;
		this.gender = gender;
		this.mbti = mbti;
		this.favor = favor;
	}
	
	
	
}
