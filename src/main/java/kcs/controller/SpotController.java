package kcs.controller;

import org.springframework.stereotype.Controller;

import kcs.service.SpotService;

@Controller
public class SpotController {
	private SpotService service;

	public SpotController(SpotService service) {
		super();
		this.service = service;
	}

	// 여기부터 RequestMapping 처리
}
