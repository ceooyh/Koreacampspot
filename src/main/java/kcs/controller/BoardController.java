package kcs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.BoardDTO;
import kcs.dto.Board_CommentDTO;
import kcs.dto.Board_FileDTO;
import kcs.service.BoardService;

@Controller
public class BoardController {
	private BoardService service;

	public BoardController(BoardService service) {
		super();
		this.service = service;
	}
	
	// 여기부터 RequestMapping 처리
	
	//보드뷰 받아오기 - 성진
	@RequestMapping("/boardView.do")
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
		List<Board_CommentDTO> list = service.selectBoardComment(bno);
		// 2-2 첨부파일 로드 부분
		List<Board_FileDTO> fList = service.selectFileList(bno);

		// 3. request에 BoardDTO 저장
		request.setAttribute("board", dto);
		request.setAttribute("comment", list);
		request.setAttribute("file", fList);

		return "board_detail_view";
	}
	
	
	
	
}
