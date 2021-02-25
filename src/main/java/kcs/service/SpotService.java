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

	// 캠핑장 별점 평균 - 희원,20210225
	public double getStarAvg(int contentId) {
		return mapper.getStarAvg(contentId);
	}

	// 캠핑장 리뷰 개수 - 희원,20210225
	public int getReviewCount(int contentId) {
		return mapper.getReviewCount(contentId);
	}
	
}
