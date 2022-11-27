package project.domain;

public class ActivityMember {


	private int activity_no;
	private String activity_title;
	private String activity_pic;
	private String activity_ad;
	private String activity_place;
	private String start_date;
	private String finish_date;
	private String contents;
	private int activity_type;
	private int region_type;
	private int favor_add;
	private String mbti1;
	private String mbti2;
	private String mbti3;
	private int key_no1;
	private int key_no2;
	private int key_no3;
	private int key_no4;
	private int key_no5;
	
	// getter, setter
	
	public int getActivity_no() {
		return activity_no;
	}

	public void setActivity_no(int activity_no) {
		this.activity_no = activity_no;
	}

	public String getActivity_title() {
		return activity_title;
	}

	public void setActivity_title(String activity_title) {
		this.activity_title = activity_title;
	}

	public String getActivity_pic() {
		return activity_pic;
	}

	public void setActivity_pic(String activity_pic) {
		this.activity_pic = activity_pic;
	}

	public String getActivity_ad() {
		return activity_ad;
	}

	public void setActivity_ad(String activity_ad) {
		this.activity_ad = activity_ad;
	}

	public String getActivity_place() {
		return activity_place;
	}

	public void setActivity_place(String activity_place) {
		this.activity_place = activity_place;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getFinish_date() {
		return finish_date;
	}

	public void setFinish_date(String finish_date) {
		this.finish_date = finish_date;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getActivity_type() {
		return activity_type;
	}

	public void setActivity_type(int activity_type) {
		this.activity_type = activity_type;
	}

	public int getRegion_type() {
		return region_type;
	}

	public void setRegion_type(int region_type) {
		this.region_type = region_type;
	}

	public int getFavor_add() {
		return favor_add;
	}

	public void setFavor_add(int favor_add) {
		this.favor_add = favor_add;
	}

	public String getMbti1() {
		return mbti1;
	}

	public void setMbti1(String mbti1) {
		this.mbti1 = mbti1;
	}

	public String getMbti2() {
		return mbti2;
	}

	public void setMbti2(String mbti2) {
		this.mbti2 = mbti2;
	}

	public String getMbti3() {
		return mbti3;
	}

	public void setMbti3(String mbti3) {
		this.mbti3 = mbti3;
	}

	public int getKey_no1() {
		return key_no1;
	}

	public void setKey_no1(int key_no1) {
		this.key_no1 = key_no1;
	}

	public int getKey_no2() {
		return key_no2;
	}

	public void setKey_no2(int key_no2) {
		this.key_no2 = key_no2;
	}

	public int getKey_no3() {
		return key_no3;
	}

	public void setKey_no3(int key_no3) {
		this.key_no3 = key_no3;
	}
	
	public int getKey_no4() {
		return key_no4;
	}

	public void setKey_no4(int key_no4) {
		this.key_no4 = key_no4;
	}
	
	public int getKey_no5() {
		return key_no5;
	}

	public void setKey_no5(int key_no5) {
		this.key_no5 = key_no5;
	}
	
	
	// 생성자
	
	public ActivityMember(int activity_no) {
		super();
		this.activity_no = activity_no;
	}
	
	
	// 암것두
	public ActivityMember() {
		super();
	}
	
	// 전체
	public ActivityMember(int activity_no, String activity_title, String activity_pic, String activity_ad,
			String activity_place, String start_date, String finish_date, String contents, int activity_type,
			int region_type, int favor_add, String mbti1, String mbti2, String mbti3, int key_no1, int key_no2,
			int key_no3, int key_no4, int key_no5) {
		super();
		this.activity_no = activity_no;
		this.activity_title = activity_title;
		this.activity_pic = activity_pic;
		this.activity_ad = activity_ad;
		this.activity_place = activity_place;
		this.start_date = start_date;
		this.finish_date = finish_date;
		this.contents = contents;
		this.activity_type = activity_type;
		this.region_type = region_type;
		this.favor_add = favor_add;
		this.mbti1 = mbti1;
		this.mbti2 = mbti2;
		this.mbti3 = mbti3;
		this.key_no1 = key_no1;
		this.key_no2 = key_no2;
		this.key_no3 = key_no3;
		this.key_no4 = key_no4;
		this.key_no5 = key_no5;
	}
	
	// 메인 페이지에 올수 있는 것들
	public ActivityMember(int activity_no, String activity_title, String activity_pic, String activity_place,
			String start_date, String finish_date, int activity_type, int region_type, int favor_add, String mbti1,
			String mbti2, String mbti3) {
		super();
		this.activity_no = activity_no;
		this.activity_title = activity_title;
		this.activity_pic = activity_pic;
		this.activity_place = activity_place;
		this.start_date = start_date;
		this.finish_date = finish_date;
		this.activity_type = activity_type;
		this.region_type = region_type;
		this.favor_add = favor_add;
		this.mbti1 = mbti1;
		this.mbti2 = mbti2;
		this.mbti3 = mbti3;
	}

	// 불러올때 로그인엑티비티
	public ActivityMember(int activity_no, String activity_title) {
		super();
		this.activity_no = activity_no;
		this.activity_title = activity_title;
	}
	

	// tostring
	@Override
	public String toString() {
		return "ActivityMember [activity_no=" + activity_no + ", activity_title=" + activity_title + ", activity_pic="
				+ activity_pic + ", activity_ad=" + activity_ad + ", activity_place=" + activity_place + ", start_date="
				+ start_date + ", finish_date=" + finish_date + ", contents=" + contents + ", activity_type="
				+ activity_type + ", region_type=" + region_type + ", favor_add=" + favor_add + ", mbti1=" + mbti1
				+ ", mbti2=" + mbti2 + ", mbti3=" + mbti3 + ", key_no1=" + key_no1 + ", key_no2=" + key_no2
				+ ", key_no3=" + key_no3 + ", key_no4=" + key_no4 + ", key_no5=" + key_no5 + "]";
	}

	
}
