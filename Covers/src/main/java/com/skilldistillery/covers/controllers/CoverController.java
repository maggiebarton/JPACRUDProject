package com.skilldistillery.covers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.covers.data.CoverDAO;

@Controller
public class CoverController {
	@Autowired
	private CoverDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("covers", dao.findAll());
		mv.setViewName("home");
		return mv;
	}

}
