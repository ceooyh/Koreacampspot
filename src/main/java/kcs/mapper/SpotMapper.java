package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.SpotDTO;

@Mapper
public interface SpotMapper {

	// 캠핑장 찾기 초기 목록
	List<SpotDTO> getCampList();

	// 캠핑장 검색 (캠핑장 이름, 키워드-태그, 지역)
	List<SpotDTO> getCampSearchList(String search);

}
