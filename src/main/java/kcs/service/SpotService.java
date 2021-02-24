package kcs.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kcs.dto.SpotDTO;
import kcs.mapper.SpotMapper;

@Service
public class SpotService {
	private SpotMapper mapper;

	public SpotService(SpotMapper mapper) {
		super();
		this.mapper = mapper;
	}

	// 캠핑장 찾기 초기 목록 - 희원,20210224
	public List<SpotDTO> getCampList() {
		return mapper.getCampList();
	}
	
	// 여기부터 서비스 메서드 작성
}
