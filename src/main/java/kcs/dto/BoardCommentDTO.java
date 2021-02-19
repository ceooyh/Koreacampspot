package kcs.dto;

import org.apache.ibatis.type.Alias;

/**
 * @author phantom5820
 *
 */
// 게시판 댓글 DTO - 성진

@Alias("boardComment")
public class BoardCommentDTO {
	private int cno;
	private int bno;
	private String writer;
	private String content;
	private String cdate;
	private int clike;
	private int chate;
	
	
	public BoardCommentDTO(int cno, int bno, String writer, String content, String cdate, int clike, int chate) {
		super();
		this.cno = cno;
		this.bno = bno;
		this.writer = writer;
		this.content = content;
		this.cdate = cdate;
		this.clike = clike;
		this.chate = chate;
	}


	public int getCno() {
		return cno;
	}


	public void setCno(int cno) {
		this.cno = cno;
	}


	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
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


	public String getCdate() {
		return cdate;
	}


	public void setCdate(String cdate) {
		this.cdate = cdate;
	}


	public int getClike() {
		return clike;
	}


	public void setClike(int clike) {
		this.clike = clike;
	}


	public int getChate() {
		return chate;
	}


	public void setChate(int chate) {
		this.chate = chate;
	}


	@Override
	public String toString() {
		return "Board_CommentDTO [cno=" + cno + ", bno=" + bno + ", writer=" + writer + ", content=" + content
				+ ", cdate=" + cdate + ", clike=" + clike + ", chate=" + chate + "]";
	}
	
	
	
}
