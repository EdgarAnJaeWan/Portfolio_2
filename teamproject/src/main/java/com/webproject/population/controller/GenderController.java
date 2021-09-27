package com.webproject.population.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GenderController {
	
	@RequestMapping(value = "/gender", method = RequestMethod.GET)
	public String gender() {
		
//		HashMap<String, Object> params = new HashMap<>();
//		if (sido != null) {
//			params.put("sido", sido);
//		}
//		
//		List<GenderVo> genderList = genderService.selectGender(params);
//				
//		model.addAttribute("genderList", genderList);
//		model.addAttribute("sido", sido);

		return "gender";
	}
}