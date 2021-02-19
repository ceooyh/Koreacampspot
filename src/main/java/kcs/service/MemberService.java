package kcs.service;

import java.util.HashMap;

import org.springframework.stereotype.Service;

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
	
}
