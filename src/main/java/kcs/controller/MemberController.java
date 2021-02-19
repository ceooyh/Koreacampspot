package kcs.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.MemberDTO;
import kcs.service.MemberService;

@Controller
public class MemberController {
	private MemberService service;

	public MemberController(MemberService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리

	// 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		MemberDTO dto = service.login(id,pass);
		if(dto != null) {
			session.setAttribute("login", true);
			session.setAttribute("id", dto.getId());
			session.setAttribute("pass", dto.getPass());
			session.setAttribute("name", dto.getName());
			session.setAttribute("user_type", dto.getUser_type());
		return "index";
	} else { 
		try {
			response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('아이디와 비밀번호를 확인하세요');history.back();</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	

	return null;
		
	}
	// 멤버 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		return ("index");
	}
	
	@RequestMapping("guest_join.do")
	public String guestJoin() {
		return "member/guest_join";
	}

}
