package kcs.controller;

import org.springframework.stereotype.Controller;

import kcs.service.BoardService;

@Controller
public class BoardController {
	private BoardService service;

	public BoardController(BoardService service) {
		super();
		this.service = service;
	}
	
	// 여기부터 RequestMapping 처리
}
