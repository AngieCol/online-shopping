package com.ang.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("greeting", "Welcome to Spring Web");
		return mv;
	}
	
//	@RequestMapping(value="/test")
//	public ModelAndView test(@RequestParam(value="greeting", required=false)String greetingStr) {
//		if(greetingStr==null)
//			greetingStr = "Tu puedes lograr lo que te propongas!!!!";
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greetingStr);
//		return mv;
//	}
//	
//	
//	@RequestMapping(value="/test/{greeting}")
//	public ModelAndView test(@PathVariable(value="greeting")String greetingStr) {
//		if(greetingStr==null)
//			greetingStr = "Tu puedes lograr lo que te propongas!!!!";
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greetingStr);
//		return mv;
//	}
	
}
