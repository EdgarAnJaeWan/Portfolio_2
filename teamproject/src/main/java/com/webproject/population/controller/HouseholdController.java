package com.webproject.population.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.webproject.population.service.HouseholdService;
import com.webproject.population.vo.HouseholdVO;
import com.webproject.population.vo.areaVO;

@Controller
@RequestMapping(path = { "/household" })
public class HouseholdController {

	@Autowired
	private HouseholdService householdService;

	
	@RequestMapping(value = "/chart", method = RequestMethod.GET)
	public String Household(@RequestParam(required=false)String sido,
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
		
		//List<HouseholdVO> householdList = householdService.selectHousehold(params);	
		//model.addAttribute("householdsList", householdList);

		return "household/household-chart";
	}
	
	@RequestMapping(value = "/search-chart", method = RequestMethod.POST)
	public String searchHousehold(@RequestParam(required=false)String sido,
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
		List<HouseholdVO> householdList = householdService.selectHousehold(params);	
		model.addAttribute("householdsList", householdList);

		System.out.println("search-household");
		
		return "household/household-chart";
	}
	
	
	@RequestMapping(value = "/graph", method = RequestMethod.GET)
	public String Householdgraph(@RequestParam(required=false)String sido,
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
		
		//List<HouseholdVO> householdList = householdService.selectHousehold(params);	
		//model.addAttribute("householdsList", householdList);

		return "household/household-graph";
	}
	
	@RequestMapping(value = "/search-graph", method = RequestMethod.POST)
	public String searchHouseholdgraph(@RequestParam(required=false)String sido,
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
		List<HouseholdVO> householdList = householdService.selectHousehold(params);	
		model.addAttribute("householdsList", householdList);

		System.out.println("search-household");
		
		return "household/household-graph";
	}
	
	
	
//	@GetMapping(path = { "/chart" })
//	public String householdchart(Model model) {
//
//		// 데이터 조회
//		// sido = householdService.findAll();
//		householdService.findAll();
//
//		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장
//
//		return "household/household-chart"; // /WEB-INF/views/ + household/household-chart + .jsp
//	}
//
//	@GetMapping(path = { "/graph" })
//	public String householdgraph(Model model) {
//
//		// 데이터 조회
//		// sido = householdService.findAll();
//		householdService.findAll();
//
//		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장
//
//		return "household/household-graph"; // /WEB-INF/views/ + household/household-graph + .jsp
//	}
//
//	
//	 @PostMapping(path = { "/search" })
//	 public String searchChart(HouseholdVO household) {
//	 
//		 System.out.println("================================");
//		 System.out.println(household);
//		 System.out.println("================================");
//	 
//	 return "household/household-chart";
//	 }
//	 
//	 
//	@GetMapping(path = { "/search" })
//	public String showChart(Model model) {
//
//		// 데이터 조회
//		List<HouseholdVO> households = householdService.findAll();
//
//		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장
//		model.addAttribute("households", households);
//
//		return "household/household-chart"; // /WEB-INF/views/ + board/list + .jsp
//	}
}