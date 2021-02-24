package kcs.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kcs.dto.BookDTO;
import kcs.dto.BusinessFileDTO;
import kcs.dto.ReviewDTO;
import kcs.dto.ReviewFileDTO;
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
	
	// 캠핑장 예약 취소 (일반 사용자 - 마이페이지) -희원,20210223
	@RequestMapping("/guestBookCancel.do")
	public String guestBookCancel(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String bno = request.getParameter("bno");
		try {
			if((String)session.getAttribute("id") == null) {
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('로그인 후 이용 가능합니다.');location.href='loginView.do';</script>");
			}else {
				int count = service.guestBookCancel(bno);
				if(count == 0) {
					response.setContentType("text/html;charset=utf-8");
					response.getWriter().write("<script>alert('페이지 오류');location.href='guestBookListView.do';</script>");
				}else {
					response.setContentType("text/html;charset=utf-8");
					response.getWriter().write("<script>alert('해당 예약이 취소되었습니다.');location.href='guestBookListView.do';</script>");
				}
			}
		} catch (IOException e) {
			// TODO: handle exception
		}
		return null;
	}
	
	// 캠핑장 후기 작성 페이지로 이동 - 희원,20210223
    @RequestMapping("/reviewWriteView.do")
    public String reviewWriteView(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    	try {
    		if(session.getAttribute("id") == null) {
    			response.setContentType("text/html;charset=utf-8");
    			response.getWriter().write("<script>alert('로그인 후 이용 가능합니다.');location.href='loginView.do';</script>");
    		}else {
    			String sno = request.getParameter("sno");
    			request.setAttribute("sno", sno);
    			return "book/review_write";
    		}
		} catch (IOException e) {
		}
        return null;
    }
    
    // 캠핑장 후기 작성 - 희원,20210223
    @RequestMapping("/reviewWriteAction.do")
    public String reviewWriteAction(MultipartHttpServletRequest request, HttpServletResponse response, HttpSession session) {
    	int sno = Integer.parseInt(request.getParameter("sno"));
    	String id = (String) session.getAttribute("id");
    	double star = Double.parseDouble(request.getParameter("star"));
    	String content = request.getParameter("content");

    	ReviewDTO reviewDTO = new ReviewDTO(sno, id, star, content);
    	int count = service.insertReview(reviewDTO);
    	try {
    		if(count == 0) {
    			response.setContentType("text/html;charset=utf-8");
    			response.getWriter().write("<script>alert('페이지 오류');location.href='guestBookListView.do';</script>");
    		}else {
    			// 파일 업로드
				List<MultipartFile> fileList = request.getFiles("file");
				String path = "c:\\fileupload\\review\\"+ id+"\\";
				ArrayList<ReviewFileDTO> fList = new ArrayList<ReviewFileDTO>();
				
				for(MultipartFile mf : fileList) {
					String originalFileName = mf.getOriginalFilename();
					long fileSize = mf.getSize();
					if(fileSize == 0) continue;
					
					// 파일 업로드
					String safeFile = path + originalFileName;
					fList.add(new ReviewFileDTO(sno, id, originalFileName));
					File parentPath = new File(path);
					if(!parentPath.exists()) parentPath.mkdirs();	// 경로 생성
					try {
						mf.transferTo(new File(safeFile));
						
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
				// 후기 파일 테이블에 추가
				service.insertReviewFile(fList);
				
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<script>alert('후기등록 완료!');location.href='guestBookListView.do';</script>");
    		}
			
		} catch (IOException e) {
		}
    	return null;
    }
}
