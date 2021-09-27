package com.webproject.population.controller;



import java.util.List;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webproject.population.service.AreaService;
import com.webproject.population.vo.areaVO;

@Controller
public class AreaController {

	@Autowired
	
	private AreaService service;
	
	@RequestMapping(value = "/area.action", method = RequestMethod.GET)
	public String area(@RequestParam(required=false)String sido,
					   @RequestParam(defaultValue = "-1")int year,
					   @RequestParam(defaultValue = "-1")int month,
					   Model model) throws Exception {
		
		HashMap<String, Object> params = new HashMap<>();
		if (sido != null) {
			params.put("sido", sido);
			model.addAttribute("sido", sido);
		}
		
		if (year != -1) {
			params.put("year", year);
			model.addAttribute("year", year);
		}
		
		if (month != -1) {
			params.put("month", month);
			model.addAttribute("month", month);
		}
		
		List<areaVO> areaList = service.selectArea(params);	
		model.addAttribute("areaList", areaList);

		return "area";
	}

	

}
