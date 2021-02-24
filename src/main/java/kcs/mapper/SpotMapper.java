package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.SpotDTO;

@Mapper
public interface SpotMapper {

	// 캠핑장 찾기 초기 목록
	List<SpotDTO> getCampList();

}
