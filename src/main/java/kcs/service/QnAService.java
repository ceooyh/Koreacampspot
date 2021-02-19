package kcs.service;

import org.springframework.stereotype.Service;

import kcs.mapper.QnAMapper;

@Service
public class QnAService {
	private QnAMapper mapper;

	public QnAService(QnAMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	// 여기부터 서비스 메서드 작성
}
