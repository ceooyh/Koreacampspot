package kcs.service;

import org.springframework.stereotype.Service;

import kcs.mapper.BoardMapper;

@Service
public class BoardService {
	private BoardMapper mapper;

	public BoardService(BoardMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	// 여기부터 서비스 메서드 작성
}
