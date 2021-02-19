package kcs.controller;

import org.springframework.stereotype.Controller;

import kcs.service.MemberService;

@Controller
public class MemberController {
	private MemberService service;

	public MemberController(MemberService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
}
