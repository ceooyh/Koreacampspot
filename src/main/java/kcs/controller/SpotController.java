package kcs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kcs.dto.SpotDTO;
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
    public String findCampSpotView(HttpServletRequest request) {
		List<SpotDTO> list = service.getCampList();
		request.setAttribute("list", list);
		
        return "spot/spot_search";
    }
}
