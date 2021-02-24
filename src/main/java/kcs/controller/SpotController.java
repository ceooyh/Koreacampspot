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
	
	// 캠핑장 등록 페이지로 이동 - 희원,20210224
	@RequestMapping("/findCampSpotView.do")
    public String findCampSpotView(HttpServletRequest request) {
		// 캠핑장 목록
		List<SpotDTO> list = service.getCampList();
		request.setAttribute("list", list);
		
        return "spot/spot_search";
    }
	
	// 캠핑장 검색 (캠핑장 이름, 키워드-태그, 지역) - 희원,20210224 - 보류
	@RequestMapping("/spotSearch.do")
	public String spotSearch(HttpServletRequest request) {
		// 검색어
		String search = request.getParameter("search");
		
		// 검색어에 해당하는 캠핑장 목록
		List<SpotDTO> list = service.getCampSearchList(search);
		request.setAttribute("list", list);
		return "spot/spot_search";
	}
}
