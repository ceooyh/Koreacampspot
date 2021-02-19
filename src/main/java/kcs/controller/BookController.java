package kcs.controller;

import org.springframework.stereotype.Controller;

import kcs.service.BookService;

@Controller
public class BookController {
	private BookService service;

	public BookController(BookService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
}
