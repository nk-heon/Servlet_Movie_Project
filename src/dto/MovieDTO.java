package dto;

public class MovieDTO {

	private int mnumber;
	private String mtitle;
	private String mcontents;
	private String mimage;
	private String mmovie;
	private String mgenre;
	private String mlink;
	
	
	
	public int getMnumber() {
		return mnumber;
	}

	public void setMnumber(int mnumber) {
		this.mnumber = mnumber;
	}

	public String getMtitle() {
		return mtitle;
	}

	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}

	public String getMcontents() {
		return mcontents;
	}

	public void setMcontents(String mcontents) {
		this.mcontents = mcontents;
	}

	public String getMimage() {
		return mimage;
	}

	public void setMimage(String mimage) {
		this.mimage = mimage;
	}

	public String getMmovie() {
		return mmovie;
	}

	public void setMmovie(String mmovie) {
		this.mmovie = mmovie;
	}

	public String getMgenre() {
		return mgenre;
	}

	public void setMgenre(String mgenre) {
		this.mgenre = mgenre;
	}

	public String getMlink() {
		return mlink;
	}

	public void setMlink(String mlink) {
		this.mlink = mlink;
	}

	public MovieDTO() {
		super();
		
	}

	public MovieDTO(int mnumber, String mtitle, String mcontents, String mimage, String mmovie, String mgenre,
			String mlink) {
		super();
		this.mnumber = mnumber;
		this.mtitle = mtitle;
		this.mcontents = mcontents;
		this.mimage = mimage;
		this.mmovie = mmovie;
		this.mgenre = mgenre;
		this.mlink = mlink;
	}

	@Override
	public String toString() {
		return "MovieDTO [mnumber=" + mnumber + ", mtitle=" + mtitle + ", mcontents=" + mcontents + ", mimage=" + mimage
				+ ", mmovie=" + mmovie + ", mgenre=" + mgenre + ", mlink=" + mlink + "]";
	}
	
	
	
}
