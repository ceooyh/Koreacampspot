package kcs.service;

import org.springframework.stereotype.Service;

import kcs.mapper.BookMapper;

@Service
public class BookService {
	private BookMapper mapper;

	public BookService(BookMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	// 여기부터 서비스 메서드 작성
}