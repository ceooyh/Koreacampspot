package kcs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.service.MemberService;

@Controller
public class MemberController {
	private MemberService service;

	public MemberController(MemberService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
	@RequestMapping("guest_join.do")
	public String guestJoin() {
		return "member/guest_join";
	}
}
