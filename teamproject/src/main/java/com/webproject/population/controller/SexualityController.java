package com.webproject.population.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webproject.population.service.SexualityServiceImpl;
import com.webproject.population.vo.SexualityVO;

@Controller
@RequestMapping(path = {"/sexuality" })
public class SexualityController {
	
	@Autowired
	private SexualityServiceImpl sexualityService;

	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String Sexualitygraph(@RequestParam(required=false)String sido,
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
			
		return "sexuality/sexuality-chart";
	}
	
	@RequestMapping(value = "/search-chart", method = RequestMethod.POST)
	public String searchSexualitygraph2(@RequestParam(required=false)String sido,
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
		
		// 여기서 데이터 조회
		List<SexualityVO> sexualityList = sexualityService.selectSexuality(params);	
		model.addAttribute("sexualitysList", sexualityList);
		
		return "sexuality/sexuality-chart";
	}
	
	@RequestMapping(value = "/graph", method = RequestMethod.GET)
	public String Sexualitygraph2(@RequestParam(required=false)String sido,
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
			
		return "sexuality/sexuality-graph";
	}
	
	@RequestMapping(value = "/search-graph", method = RequestMethod.POST)
	public String searchSexualitygraph(@RequestParam(required=false)String sido,
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
		
		// 여기서 데이터 조회
		List<SexualityVO> sexualityList = sexualityService.selectSexuality(params);	
		model.addAttribute("sexualitysList", sexualityList);
		
		System.out.println("search-sexuality");
		
		return "sexuality/sexuality-graph";
	}
	
}