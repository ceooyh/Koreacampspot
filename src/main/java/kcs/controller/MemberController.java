package kcs.controller;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.BusinessDTO;
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
	@RequestMapping("/logoutAction.do")
	public String logout(HttpServletRequest request, HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	// 회원가입 사용자 선택 페이지로 이동 - 희원,20210219
	@RequestMapping("/selectJoinView.do")
	public String selectJoinView() {
		return "member/select_join";
	}
	
	// 일반 사용자 회원가입 페이지로 이동 - 희원,20210219
	@RequestMapping("/guestJoinView.do")
	public String guestJoinView() {
		return "member/guest_join1";
	}
	
	// 아이디 중복 체크 - 희원,20210222
	@RequestMapping("/idCheckAction.do")
	public String idCheckAction(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String idCheck = service.idCheck(id);
		System.out.println(idCheck);
		try {
			if(idCheck == null) 	
				response.getWriter().write("true");	// 아이디 사용 가능
			else	
				response.getWriter().write("false");	// 아이디 중복
		} catch (IOException e) {
		}
		return null;
	}
	
	// 일반 사용자 회원가입 수행 - 희원,20210222 
	@RequestMapping("/guestJoinAction.do")
	public String guestJoin2View(HttpServletRequest request, HttpServletResponse response) {
		// 개인정보
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day");
		String email1 = request.getParameter("email");
		String email2 = request.getParameter("host");
		int gender = Integer.parseInt(request.getParameter("gender"));
		int user_type = 1;
		
		MemberDTO memberDTO = new MemberDTO(id, pass, name, tel1, tel2, tel3, birth, email1, email2, gender, user_type);
		try {
			int count = service.guestJoin(memberDTO);
			if(count == 0) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('페이지 오류');history.back();</script>");
			}
			else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('회원가입 완료!');location.href='guestJoin2View.do?id="+id+"';</script>");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 일반 사용자 취향정보 입력 페이지로 이동 - 희원,20210222
	@RequestMapping("/guestJoin2View.do")
	public String guestJoin2View(HttpServletRequest request) {
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		return "member/guest_join2";
	}
	
	// 일반 사용자 취향정보 등록 - 희원,20210219
	@RequestMapping("/guestJoinFavoriteAction.do")
	public String guestJoin(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		// 취향 정보 - 희원,20210222
		String stag = request.getParameter("stag");
		
		// 회원테이블, 취향테이블에 추가
		FavoriteDTO favoriteDTO = new FavoriteDTO(id, stag);
		
		try {
			int count = service.guestFavoriteJoin(favoriteDTO);
			if(count == 0) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('페이지 오류');history.back();</script>");
			}
			else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('취향등록 완료!');location.href='loginView.do';</script>");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	// 사업자 회원가입 페이지로 이동 - 희원,20210219
	@RequestMapping("/businessJoinView.do")
	public String businessJoinView() {
		return "member/business_join";
	}

	// 사업자 회원가입 수행 - 희원,20210219
	@RequestMapping("/businessJoinAction.do")
	public String businessJoinAction(HttpServletRequest request, HttpServletResponse response) {
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
		int user_type = 2;
		
		// 사업자 등록 정보 - 희원,20210222
		String business_no = request.getParameter("business_no1") + "-" + request.getParameter("business_no2") + "-" + request.getParameter("business_no3");
		
		// 회원테이블, 사업자등록정보테이블에 추가 
		MemberDTO memberDTO = new MemberDTO(id, pass, name, tel1, tel2, tel3, birth, email1, email2, gender, user_type);
		BusinessDTO businessDTO = new BusinessDTO(id, business_no);
		
		try {
			int count = service.businessJoin(memberDTO, businessDTO);
			if(count == 0) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('페이지 오류');history.back();</script>");
			}
			else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('회원가입 완료!');location.href='loginView.do';</script>");
			}
		} catch (IOException e) {
		}
		return null;
	}
	
	// 아이디/비밀번호 찾기 페이지로 이동 - 희원,20210222
	@RequestMapping("/findIdPwView.do")
	public String findIdPwView() {
		return "member/find_id_pw";
	}
	
	// 아이디/비밀번호 찾기 - 희원,20210222
	@RequestMapping("/findIdPw.do")
	public String findIdPw(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email1 = request.getParameter("email");
		String email2 = request.getParameter("host");
		
		// 비밀번호 찾기
		String pass = service.findPw(id, name, email1, email2);
		try {
			if(pass == null)
				pass = "";
			response.getWriter().write(pass);
		} catch (IOException e) {
		}
		return null;
	}
	
	// 개인정보 수정 페이지로 이동 (일반 사용자) - 희원,20210222
	@RequestMapping("/guestInfoUpdateView.do")
	public String guestInfoUpdateView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		try {
			String id = (String) session.getAttribute("id");
			if(id == null) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('로그인 후 이용 가능합니다.');location.href='loginView.do';</script>");
			}else {
				MemberDTO dto = service.selectMemberDTO(id);
				if(dto == null) {
					response.setContentType("text/html;charset=utf-8");
					response.getWriter().write("<script>alert('페이지 오류');history.back();</script>");
				}else {
					request.setAttribute("dto", dto);
					return "member/guest_info_update";
				}
			}
		} catch (IOException e) {
		}
		return null;
	}
	
	// 개인정보 수정 진행 (일반 사용자) - 희원,20210222
	@RequestMapping("/guestInfoUpdateAction.do")
	public String guestInfoUpdateAction(HttpServletRequest request, HttpServletResponse response) {
		// 개인정보
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day");
		String email1 = request.getParameter("email");
		String email2 = request.getParameter("host");
		int gender = Integer.parseInt(request.getParameter("gender"));
		
		MemberDTO memberDTO = new MemberDTO(id, pass, name, tel1, tel2, tel3, birth, email1, email2, gender);
		try {
			int count = service.guestInfoUpdate(memberDTO);
			if(count == 0) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('페이지 오류');history.back();</script>");
			}
			else {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('회원정보 수정 완료!');location.href='indexView.do';</script>");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}