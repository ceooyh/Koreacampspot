package kcs.dto;

import org.apache.ibatis.type.Alias;

// 게시판 첨부파일 DTO - 성진
@Alias("boardFile")
public class BoardFileDTO {
	private int bno;
	private String fileName;
	private String writer;
	
	
	
	public BoardFileDTO(int bno, String fileName, String writer) {
		super();
		this.bno = bno;
		this.fileName = fileName;
		this.writer = writer;
	}



	public int getBno() {
		return bno;
	}



	public void setBno(int bno) {
		this.bno = bno;
	}



	public String getFileName() {
		return fileName;
	}



	public void setFileName(String fileName) {
		this.fileName = fileName;
	}



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	@Override
	public String toString() {
		return "Board_FileDTO [bno=" + bno + ", fileName=" + fileName + ", writer=" + writer + "]";
	}
	
	
	
}
