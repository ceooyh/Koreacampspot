package kcs.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import kcs.dto.BusinessDTO;
import kcs.dto.FavoriteDTO;
import kcs.dto.MemberDTO;

@Mapper
public interface MemberMapper {

	// 로그인
	MemberDTO login(HashMap<String, Object> map);

	// 일반 사용자 회원가입(개인정보)
	int guestJoin(MemberDTO memberDTO);

	// 일반 사용자 회원가입(취향정보)
	int insertGuestFavorit(FavoriteDTO favoriteDTO);

	// 사업자 회원가입(개인정보)
	int businessJoin(MemberDTO memberDTO);

	// 사업자 회원가입(사업자정보)
	void insertBusiness(BusinessDTO businessDTO); 
	
	
}
