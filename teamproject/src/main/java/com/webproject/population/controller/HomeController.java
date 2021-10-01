package com.webproject.population.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webproject.population.service.HomeService;
import com.webproject.population.vo.HomeVO;

@Controller


public class HomeController {
	
	@Autowired
	
	private HomeService homeService;
	
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(
				@RequestParam (required=false)  String region,
				@RequestParam (defaultValue = "-1") int household,
			   Model model) throws Exception {
		
		HashMap<String, Object> param = new HashMap<>();
		
		param.put("region", region);
		model.addAttribute("region", region);
		
		param.put("household", household);
		model.addAttribute("household", household);
		
		List<HomeVO> homeList = homeService.selectHome(param);
		model.addAttribute("homeList", homeList);
		return "home";
	}
	
}