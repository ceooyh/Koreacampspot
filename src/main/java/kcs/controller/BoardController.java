package kcs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.BoardDTO;
import kcs.dto.BoardCommentDTO;
import kcs.dto.BoardFileDTO;
import kcs.service.BoardService;
import kcs.vo.PaggingVO;

@Controller
public class BoardController {
	private BoardService service;

	public BoardController(BoardService service) {
		super();
		this.service = service;
	}
	
	// 여기부터 RequestMapping 처리
	
	//board
	@RequestMapping("/boardView.do")
	public String index(HttpServletRequest request) {
		int page = 1;
		//페이지 셋팅
		if(request.getParameter("pageNo") != null)
			page = Integer.parseInt(request.getParameter("pageNo"));
		List<BoardDTO> list = service.selectBoardList(page);//글목록 읽어옴
		int count = service.selectCount();
		PaggingVO vo = new PaggingVO(count, page);
		request.setAttribute("list", list);
		request.setAttribute("pagging", vo);
		System.out.println(list.toString());
		return "board_list";
	}
	
	
	//board_list 글쓰기 페이지처리 - 성진
	@RequestMapping("/boardWriteView.do")
	public String boardView(HttpServletRequest request) {
		int bno = 0;
		if (request.getParameter("bno") != null)
			bno = Integer.parseInt(request.getParameter("bno"));
		else
			bno = (int) request.getAttribute("bno");
		// 1-1. 해당 게시글 조회수 증가
		service.addCount(bno);
		// 2. DB 해당 게시글 정보를 읽어온다.
		BoardDTO dto = service.selectBoard(bno);// 글목록 읽어옴
		// 2-1. 댓글 불러오는 부분
		List<BoardCommentDTO> list = service.selectBoardComment(bno);
		// 2-2 첨부파일 로드 부분
		List<BoardFileDTO> fList = service.selectFileList(bno);

		// 3. request에 BoardDTO 저장
		request.setAttribute("board", dto);
		request.setAttribute("comment", list);
		request.setAttribute("file", fList);

		return "board_detail_view";
	}
	// 댓글달기
	@RequestMapping("/insertComment.do")
	public String insertComment(HttpServletRequest request, HttpServletResponse response) {
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		service.insertComment(new BoardCommentDTO(bno, writer, content));
		
		return null;
	}
	
	
	
	}
	
	
	

