package kcs.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import kcs.dto.BusinessDTO;
import kcs.dto.FavoriteDTO;
import kcs.dto.MemberDTO;
import kcs.mapper.MemberMapper;

@Service
public class MemberService {
	private MemberMapper mapper;

	public MemberService(MemberMapper mapper) {
		super();
		this.mapper = mapper;
	}

	// 여기부터 서비스 메서드 작성
	
	// 로그인 메서드 -성진
	public MemberDTO login(String id, String pass) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pass", pass);
		return mapper.login(map); 
	}

	// 일반 사용자 회원가입 - 희원,20210219
	public int guestJoin(MemberDTO memberDTO, FavoriteDTO favoriteDTO) {
		int count = mapper.guestJoin(memberDTO);
		if(count != 0 && favoriteDTO != null);
			mapper.insertGuestFavorit(favoriteDTO);
		return count;
	}

	public int businessJoin(MemberDTO memberDTO, BusinessDTO businessDTO) {
		int count = mapper.businessJoin(memberDTO);
		if(count != 0 && businessDTO != null);
			mapper.insertBusiness(businessDTO);
		return count;
	}
	
}
