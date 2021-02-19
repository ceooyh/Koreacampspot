package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.BoardDTO;
import kcs.dto.Board_CommentDTO;
import kcs.dto.Board_FileDTO;

@Mapper
public interface BoardMapper {

	void addCount(int bno);

	BoardDTO selectBoard(int bno);

	List<Board_CommentDTO> selectBoardComment(int bno);

	List<Board_FileDTO> selectFileList(int bno);

}
