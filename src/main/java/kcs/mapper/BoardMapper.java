package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.BoardDTO;
import kcs.dto.BoardCommentDTO;
import kcs.dto.BoardFileDTO;

@Mapper
public interface BoardMapper {
	
	
	List<BoardDTO> selectBoardList(int page);

	void addCount(int bno);

	BoardDTO selectBoard(int bno);

	List<BoardCommentDTO> selectBoardComment(int bno);

	List<BoardFileDTO> selectFileList(int bno);


}
