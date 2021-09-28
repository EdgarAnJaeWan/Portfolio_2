package com.webproject.population.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
   
   @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
   public String home() {
      
      return "home";
   }
   
//   @GetMapping(path = { "/logout.action" })
//   public String logout(HttpSession session) {
//      
//      session.removeAttribute("loginuser");
//      
//      return "redirect:/home.action"; 
//   }
   
}