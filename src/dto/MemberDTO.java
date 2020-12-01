package dto;

public class MemberDTO {

	private String mid;
	private String mpassword;
	private String mbyname;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String mid, String mpassword, String mbyname) {
		super();
		this.mid = mid;
		this.mpassword = mpassword;
		this.mbyname = mbyname;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMpassword() {
		return mpassword;
	}

	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getMbyname() {
		return mbyname;
	}

	public void setMbyname(String mbyname) {
		this.mbyname = mbyname;
	}

	@Override
	public String toString() {
		return "MemberDTO [mid=" + mid + ", mpassword=" + mpassword + ", mbyname=" + mbyname + "]";
	}
	
}
