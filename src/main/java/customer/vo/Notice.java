package customer.vo;

import java.util.Date;

public class Notice {

	private String seq;

	private String title;	
	private String writer;	
	private String content;
	private Date regedat;
	private String hit;
	

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegedat() {
		return regedat;
	}
	public void setRegedat(Date regedat) {
		this.regedat = regedat;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}


}
