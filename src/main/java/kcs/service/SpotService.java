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

	// 여기부터 서비스 메서드 작성

	// 캠핑장 찾기 초기 목록 - 희원,20210224
	public List<SpotDTO> getCampList() {
		return mapper.getCampList();
	}

	// 캠핑장 검색 (캠핑장 이름, 키워드-태그, 지역) - 희원,20210224
	public List<SpotDTO> getCampSearchList(String search) {
		return mapper.getCampSearchList(search);
	}
	
}
