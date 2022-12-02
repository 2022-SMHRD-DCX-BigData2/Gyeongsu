package project.domain;

public class UserMember {


	

	private int user_no;
	private String id;
	private String pw;
	private String name;
	private String mbti;
	private String key_no1;
	private String key_no2;
	private String key_no3;
	private String key_no4;
	private String gender;
	private String age;
	
	// getter, setter
	
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
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMbti() {
		return mbti;
	}
	public void setMbti(String mbti) {
		this.mbti = mbti;
	}
	public String getKey_no1() {
		return key_no1;
	}
	public void setKey_no1(String key_no1) {
		this.key_no1 = key_no1;
	}
	public String getKey_no2() {
		return key_no2;
	}
	public void setKey_no2(String key_no2) {
		this.key_no2 = key_no2;
	}
	public String getKey_no3() {
		return key_no3;
	}
	public void setKey_no3(String key_no3) {
		this.key_no3 = key_no3;
	}
	public String getKey_no4() {
		return key_no4;
	}
	public void setKey_no4(String key_no4) {
		this.key_no4 = key_no4;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	
	// 생성자
	public UserMember() {
		super();
	}
	
	
	
	public UserMember(int user_no) {
		super();
		this.user_no = user_no;
	}
	
	
	public UserMember(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	
	public UserMember(int user_no, String id, String pw) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.pw = pw;
	}
	
	public UserMember(int user_no, String id, String pw, String name) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
	}
	
	public UserMember(int user_no, String id, String pw, String name, String mbti) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mbti = mbti;
	}
		
	public UserMember(int user_no, String id, String pw, String name, String mbti, String key_no1, String key_no2,
			String key_no3, String key_no4, String gender, String age) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mbti = mbti;
		this.key_no1 = key_no1;
		this.key_no2 = key_no2;
		this.key_no3 = key_no3;
		this.key_no4 = key_no4;
		this.gender = gender;
		this.age = age;
	}
	
	public UserMember(String key_no1, String key_no2, String key_no3, String key_no4) {
		super();
		this.key_no1 = key_no1;
		this.key_no2 = key_no2;
		this.key_no3 = key_no3;
		this.key_no4 = key_no4;
	}
	
	public UserMember(String id, String pw, String name, String mbti, String key_no1, String key_no2, String key_no3, String key_no4) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mbti = mbti;
		this.key_no1 = key_no1;
		this.key_no2 = key_no2;
		this.key_no3 = key_no3;
		this.key_no4 = key_no4;
	}
	
	
	public UserMember(int user_no, String id, String pw, String name, String gender, String age) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.age = age;
	}
	
	
	// 객체에 담긴 정보를 출력해볼 수 있는 메소드
	// toString
	
	@Override
	public String toString() {
		return "UserMember [user_no=" + user_no + ", id=" + id + ", pw=" + pw + ", name=" + name + ", mbti=" + mbti
				+ ", key_no1=" + key_no1 + ", key_no2=" + key_no2 + ", key_no3=" + key_no3 + ", key_no4=" + key_no4 + "]";
	}

	
}
