package com.webproject.population.controller;






import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AreaGraphController {

	 @RequestMapping(value = { "/area_graph.action" }, method = RequestMethod.GET)
	   public String area_graph() {
	      
	      return "area_graph";
	   }
	

}
