package com.javainuse.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javainuse.model.Employee;
import com.javainuse.model.Player;
import com.javainuse.service.EmployeeService;
import com.javainuse.service.PlayerService;

@Controller
public class PlayerController {


	
	@Autowired
	PlayerService playerService;

	
	@RequestMapping("/index")
	public ModelAndView indexPage() {
		return new ModelAndView("Index1");
	}
	
	@RequestMapping("/contact")
	public ModelAndView contactPage() {
		return new ModelAndView("Contact1");
	}
	
	@RequestMapping("/gallery")
	public ModelAndView gallaryPage() {
		return new ModelAndView("Gallery1");
	}
	
	
	@RequestMapping("/news")
	public ModelAndView NewsPage() {
		return new ModelAndView("News1");
	}
	
	@RequestMapping("/results")
	public ModelAndView ResultsPage() {
		return new ModelAndView("Results");
	}
	
	@RequestMapping(value = "/addNewPlayer", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addPlayer", "player", new Player());
	}

	private boolean uploadFile(MultipartFile[] files)
	{
		 StringBuilder fileNames=new StringBuilder();
		
		 try
		 {
			 for(MultipartFile file:files)
			 {
				  byte[] bytes = file.getBytes();
				    Path path = Paths.get(FileUploadController.UPLOADED_FOLDER + file.getOriginalFilename());
				    Files.write(path, bytes);
			 } 
		 }
		 catch (IOException e) {
	            e.printStackTrace();
	            return false;
	        }
		 return true;
	}

	@RequestMapping(value = "/addNewPlayer", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("player") Player player,@RequestParam("files") MultipartFile[] files,
    		
            RedirectAttributes redirectAttributes ) {
		 ModelAndView model = new ModelAndView("uploadStatus");
		 if (files.length==0) {
	            
	             model = new ModelAndView("uploadStatus");
	            model.addObject("msg", "Please select a file to upload");
	            return model;
	        }
		
		playerService.insertPlayer(player);
		
		if(uploadFile(files))
		{
		List<Player> players = playerService.getAllPlayers();
		
		
		
		 model = new ModelAndView("managerLog");
		model.addObject("players", players);
		 model.addObject("msg","Sucessfully uploaded");
		return model;
		}
		else
		{
			 model.addObject("msg", "some error occured");
			return model;
		}
	}

	@RequestMapping("/getPlayers")
	public ModelAndView getPlayers() {
		
		List<Player> players = playerService.getAllPlayers();
		ModelAndView model = new ModelAndView("getPlayers");
		model.addObject("players", players);
		return model;
		
	}
	
	@RequestMapping("/managerLog")
	public ModelAndView managerLog() {
		List<Player> players = playerService.getAllPlayers();
		System.out.println(players);
		ModelAndView model = new ModelAndView("managerLog");
		model.addObject("players", players);
		return model;
	}
	
}
