package project.domain;

public class KeyMember {

	private int key_no;
	private String keyword;
	
	
	// getter, setter
	
	public int getKey_no() {
		return key_no;
	}
	public void setKey_no(int key_no) {
		this.key_no = key_no;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	// 생성자
	
	public KeyMember(int key_no, String keyword) {
		super();
		this.key_no = key_no;
		this.keyword = keyword;
	}
	
	public KeyMember() {
		super();
	}

	
	// 객체에 담긴 정보를 출력해볼 수 있는 메소드
		// toString
	
	@Override
	public String toString() {
		return "KeyMember [key_no=" + key_no + ", keyword=" + keyword + "]";
	}
	
	
	
	
	
}
