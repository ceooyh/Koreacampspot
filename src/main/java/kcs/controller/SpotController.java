package kcs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.service.SpotService;

@Controller
public class SpotController {
	private SpotService service;

	public SpotController(SpotService service) {
		super();
		this.service = service;
	}
	
	// 여기부터 RequestMapping 처리
	
	@RequestMapping("/findCampSpotView.do")
    public String findCampSpotView() {
        return "spot/spot_search";
    }
}
