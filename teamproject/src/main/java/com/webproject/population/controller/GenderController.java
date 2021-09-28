package com.webproject.population.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webproject.population.service.GenderService;
import com.webproject.population.vo.GenderVO;

@Controller
public class GenderController {

	@Autowired
	@Qualifier("genderService")
	private GenderService genderService;
	
	@RequestMapping(value = "/gender.action", method = RequestMethod.GET)
	public String gender(@RequestParam(required=false)String sido, Model model) throws Exception {
		
		HashMap<String, Object> params = new HashMap<>();
		if (sido != null) {
			params.put("sido", sido);
		}
		
		List<GenderVO> genderList = genderService.selectGender(params);
				
		model.addAttribute("genderList", genderList);
		model.addAttribute("sido", sido);

		return "gender";
	}
}