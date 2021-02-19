package kcs.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kcs.dto.BoardDTO;
import kcs.dto.BoardCommentDTO;
import kcs.dto.BoardFileDTO;
import kcs.mapper.BoardMapper;

@Service
public class BoardService {
	private BoardMapper mapper;

	public BoardService(BoardMapper mapper) {
		super();
		this.mapper = mapper;
	}

	public void addCount(int bno) {
		mapper.addCount(bno);
		
	}

	public BoardDTO selectBoard(int bno) {
		return mapper.selectBoard(bno);
	}

	public List<BoardCommentDTO> selectBoardComment(int bno) {
		return mapper.selectBoardComment(bno);
	}

	public List<BoardFileDTO> selectFileList(int bno) {
		return mapper.selectFileList(bno);
	}
	
	// 여기부터 서비스 메서드 작성
}
