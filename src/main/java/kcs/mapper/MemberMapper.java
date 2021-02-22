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
	int guestFavoriteJoin(FavoriteDTO favoriteDTO); 

	// 사업자 회원가입(개인정보)
	int businessJoin(MemberDTO memberDTO);

	// 사업자 회원가입(사업자정보)
	void insertBusiness(BusinessDTO businessDTO);

	// 아이디 중복 체크
	String idCheck(String id);

	// 비밀번호 찾기
	String findPw(HashMap<String, Object> map);

	// 회원정보 수정을 위한 회원정보 가져오기 (개인정보)
	MemberDTO selectMemberDTO(String id);

	// 개인정보 수정 진행 (일반 사용자)
	int guestInfoUpdate(MemberDTO memberDTO);

	// 취향정보 수정 진행 (일반 사용자)
	int guestFavoriteUpdate(FavoriteDTO favoriteDTO);

	// 사업자정보 수정을 위한 사업자정보 가져오기
	BusinessDTO selectBusinessDTO(String id);

	// 사업자 정보 수정 (business 테이블)
	int businessUpdate(BusinessDTO businessDTO);

	// 사업자 개인정보 수정 (member 테이블)
	int businessInfoUpdate(MemberDTO memberDTO);

	
}

