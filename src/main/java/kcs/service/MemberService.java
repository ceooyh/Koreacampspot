package kcs.service;

import org.springframework.stereotype.Service;

import kcs.mapper.MemberMapper;

@Service
public class MemberService {
	private MemberMapper mapper;

	public MemberService(MemberMapper mapper) {
		super();
		this.mapper = mapper;
	}
	
	// 여기부터 서비스 메서드 작성
}
