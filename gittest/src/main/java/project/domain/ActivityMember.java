package project.domain;

public class ActivityMember {

	private int activity_no;
	private String activity_title;
	private String activity_pic;
	private String activity_ad;
	private String start_date;
	private String finish_date;
	private String activity_type;
	private String region_type;
	private String favor_add;
	private int key_no1;
	private int key_no2;
	private int key_no3;
	
	
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

	public String getActivity_type() {
		return activity_type;
	}

	public void setActivity_type(String activity_type) {
		this.activity_type = activity_type;
	}

	public String getRegion_type() {
		return region_type;
	}

	public void setRegion_type(String region_type) {
		this.region_type = region_type;
	}

	public String getFavor_add() {
		return favor_add;
	}

	public void setFavor_add(String favor_add) {
		this.favor_add = favor_add;
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

	
	
	// 생성자
	
	public ActivityMember(int activity_no, String activity_title, String activity_pic, String activity_ad,
			String start_date, String finish_date, String activity_type, String region_type, String favor_add,
			int key_no1, int key_no2, int key_no3) {
		super();
		this.activity_no = activity_no;
		this.activity_title = activity_title;
		this.activity_pic = activity_pic;
		this.activity_ad = activity_ad;
		this.start_date = start_date;
		this.finish_date = finish_date;
		this.activity_type = activity_type;
		this.region_type = region_type;
		this.favor_add = favor_add;
		this.key_no1 = key_no1;
		this.key_no2 = key_no2;
		this.key_no3 = key_no3;
	}
	
	public ActivityMember() {
		super();
	}
	
	// 메인페이지에 보여줄 문화정보
	public ActivityMember(int activity_no, String activity_title, String activity_pic, String favor_add) {
		super();
		this.activity_no = activity_no;
		this.activity_title = activity_title;
		this.activity_pic = activity_pic;
		this.favor_add = favor_add;
	}

	
	
	// tostring
	@Override
	public String toString() {
		return "ActivityMember [activity_no=" + activity_no + ", activity_title=" + activity_title + ", activity_pic="
				+ activity_pic + ", activity_ad=" + activity_ad + ", start_date=" + start_date + ", finish_date="
				+ finish_date + ", activity_type=" + activity_type + ", region_type=" + region_type + ", favor_add="
				+ favor_add + ", key_no1=" + key_no1 + ", key_no2=" + key_no2 + ", key_no3=" + key_no3 + "]";
	}
	
	


	
	
}
