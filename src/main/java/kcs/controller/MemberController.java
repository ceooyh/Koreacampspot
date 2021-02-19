package kcs.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.FavoriteDTO;
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

	// 로그인 페이지로 이동 - 희원,20210219
	@RequestMapping("/loginView.do")
	public String loginView() {
		return "member/login";
	}
	
	// 로그인 진행 - 성진
	@RequestMapping("/loginAction.do")
	public String login(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		MemberDTO dto = service.login(id, pass);
		if (dto != null) {
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

	// 멤버 로그아웃 - 성진
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	// 회원가입 사용자 선택 페이지로 이동 - 희원,20210219
	@RequestMapping("/selectJoinView.do")
	public String selectJoinView() {
		return "select_join";
	}
	
	// 일반 사용자 회원가입 페이지로 이동 - 희원,20210219
	@RequestMapping("/guest_joinView.do")
	public String guestJoinView() {
		return "member/guest_join";
	}
	
	// 일반 사용자 회원가입 수행 - 희원,20210219
	@RequestMapping("/guest_join.do")
	public String guestJoin(HttpServletRequest request, HttpServletResponse response) {
		// 개인정보
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String birth = request.getParameter("birth");
		String email1 = request.getParameter("email");
		String email2 = request.getParameter("host");
		int gender = Integer.parseInt(request.getParameter("gender"));
		int user_type = 1;
		
		// 취향 정보
		
		// 회원테이블에 추가
		MemberDTO memberDTO = new MemberDTO(id, pass, name, tel1, tel2, tel3, birth, email1, email2, gender, user_type);
		FavoriteDTO favoriteDTO = null;
//		favoriteDTO new FavoriteDTO(id, stag);
		int count = service.guestJoin(memberDTO, favoriteDTO);
		return null;
	}

}
