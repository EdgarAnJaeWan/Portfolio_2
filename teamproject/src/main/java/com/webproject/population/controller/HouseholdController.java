package com.webproject.population.controller;

import java.text.DateFormat;
import java.util.Date;
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

@Controller
@RequestMapping(path = { "/household" })
public class HouseholdController {

	@Autowired
	@Qualifier("householdService")
	private HouseholdService householdService;

	@GetMapping(path = { "/chart" })
	public String householdchart(Model model) {

		// 데이터 조회
		// sido = householdService.findAll();
		householdService.findAll();

		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장

		return "household/household-chart"; // /WEB-INF/views/ + household/household-chart + .jsp
	}

	@GetMapping(path = { "/graph" })
	public String householdgraph(Model model) {

		// 데이터 조회
		// sido = householdService.findAll();
		householdService.findAll();

		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장

		return "household/household-graph"; // /WEB-INF/views/ + household/household-graph + .jsp
	}

	
	 @PostMapping(path = { "/search" })
	 public String searchChart(HouseholdVO household) {
	 
		 System.out.println("================================");
		 System.out.println(household);
		 System.out.println("================================");
	 
	 return "household/household-chart";
	 }
	 
	 
	@GetMapping(path = { "/search" })
	public String showChart(Model model) {

		// 데이터 조회
		List<HouseholdVO> households = householdService.findAll();

		// View에서 사용할 수 있도록 Model 타입의 전달인자에 저장 -> Request 객체에 저장
		model.addAttribute("households", households);

		return "household/household-chart"; // /WEB-INF/views/ + board/list + .jsp
	}
}