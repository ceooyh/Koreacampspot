package kcs.controller;

import org.springframework.stereotype.Controller;

import kcs.service.QnAService;

@Controller
public class QnAController {
	private QnAService service;

	public QnAController(QnAService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
}
