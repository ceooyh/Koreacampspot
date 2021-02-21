package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.BoardDTO;
import kcs.dto.BoardCommentDTO;
import kcs.dto.BoardFileDTO;

@Mapper
public interface BoardMapper {
	
	//게시판목록
	List<BoardDTO> selectBoardList(int page);
	//조회수 증가
	void addCount(int bno);
	//해당 게시글 한개
	BoardDTO selectBoard(int bno);
	//게시판 댓글 목록
	List<BoardCommentDTO> selectBoardComment(int bno);
	//게시판 첨부파일 목록
	List<BoardFileDTO> selectFileList(int bno);
	//
	int selectCount();
	//댓글달기
	int insertBoardComment(BoardCommentDTO dto);


}
