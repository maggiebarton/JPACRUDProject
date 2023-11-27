package com.skilldistillery.covers.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.covers.data.CoverDAO;
import com.skilldistillery.covers.entities.Cover;

@Controller
public class CoverController {
	@Autowired
	private CoverDAO dao;

	@GetMapping(path = { "/", "home.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("covers", dao.findByStatus("Practicing"));
		mv.setViewName("home");
		return mv;
	}

	@GetMapping(path = "getCover.do")
	public ModelAndView coverById(int id) {
		ModelAndView mv = new ModelAndView();
		Cover cover = dao.findById(id);
		mv.addObject("cover", cover);
		mv.setViewName("cover");
		return mv;
	}
	
	@GetMapping(path = "viewAll.do")
	public ModelAndView viewAllCovers() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("covers", dao.findAll());
		mv.setViewName("covers");
		return mv;
	}

	@PostMapping(path = "add.do")
	public ModelAndView add(Cover cover, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		dao.create(cover);
		redir.addFlashAttribute("cover", cover);
		mv.setViewName("redirect:addCover.do");
		return mv;
	}

	@GetMapping(path = "addCover.do")
	public ModelAndView coverAdded(Cover cover) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cover");
		return mv;
	}
	
	@GetMapping(path = "delete.do")
	public String delete (int id, Model model) {
		model.addAttribute("cover", dao.delete(id));
		return "status";
		
	}
	
	@GetMapping (path ="update.do")
	public ModelAndView update(int id) {
		ModelAndView mv = new ModelAndView();
		Cover cover = dao.findById(id);
		mv.addObject("cover", cover);
		mv.setViewName("update");
		return mv;
		
	}
	
	@PostMapping (path ="updateCover.do")
	public String update(Cover cover, Model model) {
		model.addAttribute("cover", dao.update(cover));
		return "cover";
		
	}
	
	@GetMapping(path = "getStatus.do")
	public ModelAndView coversByStatus() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("notStarted", dao.findByStatus("Not Started"));
		mv.addObject("practicing", dao.findByStatus("Practicing"));
		mv.addObject("mastered", dao.findByStatus("Mastered"));
		mv.setViewName("coversByStatus");
		return mv;
	}
	
	@GetMapping(path = "getKey.do")
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
