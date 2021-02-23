package kcs.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.BookDTO;
import kcs.service.BookService;

@Controller
public class BookController {
	private BookService service;

	public BookController(BookService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
	
	// 캠핑장 예약 내역 확인 (일반 사용자 - 마이페이지) - 희원,20210223
	@RequestMapping("guestBookListView.do")
	public String guestBookListView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		try {
			if((String)session.getAttribute("id") == null) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('로그인 후 이용 가능합니다.');location.href='loginView.do';</script>");
			}else {
				// 예약 내역
				String id = (String) session.getAttribute("id");
				List<BookDTO> list = service.getGuestBookList(id);
				request.setAttribute("list", list);
				
				// 날짜 정보
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Calendar cal = Calendar.getInstance();
				String today = sdf.format(cal.getTime());
				request.setAttribute("today", today);
				
				return "book/guest_book_list";
			}
		} catch (IOException e) {
		}
		return null;
	}
}
