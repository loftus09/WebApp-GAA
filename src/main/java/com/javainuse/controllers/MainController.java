package com.javainuse.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.model.Email;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public ModelAndView firstPage() {
		return new ModelAndView("home/Index1");
	}
	@RequestMapping("/index")
	public ModelAndView indexPage() {
		return new ModelAndView("home/Index1");
	}
	
	@RequestMapping("/history")
	public ModelAndView historyPage() {
		return new ModelAndView("home/History1");
	}
	
	@RequestMapping("/contact")
	public ModelAndView contactPage() {
		
		
		return new ModelAndView("home/Contact1","mail",new Email());
	}
	
	@RequestMapping("/gallery")
	public ModelAndView gallaryPage() {
		return new ModelAndView("home/Gallery1");
	}	
	@RequestMapping("/results")
	public ModelAndView ResultsPage() {
		return new ModelAndView("home/Results1");
	}

	@RequestMapping("/fixtures")
	public ModelAndView FixturesPage() {
		return new ModelAndView("home/Fixtures1");
	}

	@RequestMapping("/Seniormensteam")
	public ModelAndView SeniormensteamPage() {
		return new ModelAndView("home/Seniormensteam");
	}	
	@RequestMapping("/SeniorLadiesteam")
	public ModelAndView SeniorLadiesteamPage() {
		return new ModelAndView("home/SeniorLadiesteam");
	}	
	@RequestMapping("/U21team")
	public ModelAndView U21teamPage() {
		return new ModelAndView("home/U21team");
	}	
	@RequestMapping("/Physio")
	public ModelAndView PhysioPage() {
		return new ModelAndView("home/Physio");
	}	
}
