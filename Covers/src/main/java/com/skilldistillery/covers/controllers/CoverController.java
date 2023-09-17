package com.skilldistillery.covers.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.covers.data.CoverDAO;
import com.skilldistillery.covers.entities.Cover;

@Controller
public class CoverController {
	@Autowired
	private CoverDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("covers", dao.findByStatus("Practicing"));
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(path = "getCover.do")
	public ModelAndView coverById(int id) {
		ModelAndView mv = new ModelAndView();
		Cover cover = dao.findById(id);
		mv.addObject("cover", cover);
		mv.setViewName("cover");
		return mv;
	}
	
	@RequestMapping(path = "viewAll.do")
	public ModelAndView viewAllCovers() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("covers", dao.findAll());
		mv.setViewName("covers");
		return mv;
	}

	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public ModelAndView add(Cover cover, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		dao.create(cover);
		redir.addFlashAttribute("cover", cover);
		mv.setViewName("redirect:addCover.do");
		return mv;
	}

	@RequestMapping(path = "addCover.do", method = RequestMethod.GET)
	public ModelAndView coverAdded(Cover cover) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cover");
		return mv;
	}
	
	@RequestMapping(path = "delete.do", method = RequestMethod.GET)
	public String delete (int id, Model model) {
		model.addAttribute("cover", dao.delete(id));
		return "status";
		
	}
	
	@RequestMapping (path ="update.do")
	public ModelAndView update(int id) {
		ModelAndView mv = new ModelAndView();
		Cover cover = dao.findById(id);
		mv.addObject("cover", cover);
		mv.setViewName("update");
		return mv;
		
	}
	
	@RequestMapping (path ="updateCover.do", method=RequestMethod.POST)
	public String update(Cover cover, Model model) {
		model.addAttribute("cover", dao.update(cover));
		return "cover";
		
	}
	
	@RequestMapping(path = "getStatus.do")
	public ModelAndView coversByStatus() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("notStarted", dao.findByStatus("Not Started"));
		mv.addObject("practicing", dao.findByStatus("Practicing"));
		mv.addObject("mastered", dao.findByStatus("Mastered"));
		mv.setViewName("coversByStatus");
		return mv;
	}
	
	@RequestMapping(path = "getKey.do")
	public ModelAndView coversByKey() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("A", dao.findByKey("A"));
		mv.addObject("B", dao.findByKey("B"));
		mv.addObject("C", dao.findByKey("C"));
		mv.addObject("D", dao.findByKey("D"));
		mv.addObject("E", dao.findByKey("E"));
		mv.addObject("F", dao.findByKey("F"));
		mv.addObject("G", dao.findByKey("G"));
		mv.setViewName("coversByKey");
		return mv;
	}

}
