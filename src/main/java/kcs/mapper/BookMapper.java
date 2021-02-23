package kcs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.BookDTO;

@Mapper
public interface BookMapper {

	// 캠핑장 예약 내역 확인 (일반 사용자 - 마이페이지)
	List<BookDTO> getGuestBookList(String id);

}
