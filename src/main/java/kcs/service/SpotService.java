package kcs.service;

import org.springframework.stereotype.Service;

import kcs.mapper.SpotMapper;

@Service
public class SpotService {
	private SpotMapper mapper;

	public SpotService(SpotMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	// 여기부터 서비스 메서드 작성
}
