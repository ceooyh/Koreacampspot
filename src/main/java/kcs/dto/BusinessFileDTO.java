package kcs.dto;

import org.apache.ibatis.type.Alias;

@Alias("businessFile")
public class BusinessFileDTO {
	private int bno;
	private String writer;
	private String fileName;
	public BusinessFileDTO(int bno, String writer, String fileName) {
		super();
		this.bno = bno;
		this.writer = writer;
		this.fileName = fileName;
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
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
}
