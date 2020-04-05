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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javainuse.model.Email;
import com.javainuse.model.Employee;
import com.javainuse.model.Player;
import com.javainuse.service.EmployeeService;
import com.javainuse.service.PlayerService;

@Controller
public class PlayerController {

	@Autowired
	PlayerService playerService;
	
	@RequestMapping("portal/deletePlayer/{id}")
	public String deleteProduct(@PathVariable(name = "id") int id) {
		playerService.deletePlayer(playerService.getPlayerById(id));
	    return "redirect:/portal/getPlayers";       
	}
		
	@RequestMapping(value = "portal/addNewPlayer", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("portal/addPlayer", "player", new Player());
	}

	public static boolean uploadFile(MultipartFile[] files)
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

	@RequestMapping(value = "portal/addNewPlayer", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("player") Player player,@RequestParam("files") MultipartFile[] files,
    		
            RedirectAttributes redirectAttributes ) {
		 ModelAndView model = new ModelAndView("portal/uploadStatus");
		 if (files.length==0) {
	            
	             model = new ModelAndView("portal/uploadStatus");
	            model.addObject("msg", "Please select a file to upload");
	            return model;
	        }
		
		playerService.insertPlayer(player);
		
		if(uploadFile(files))
		{
		List<Player> players = playerService.getAllPlayers();
		
		
		
		 model = new ModelAndView("portal/managerLog");
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

	@RequestMapping("portal/getPlayers")
	public ModelAndView getPlayers() {
		
		List<Player> players = playerService.getAllPlayers();
		ModelAndView model = new ModelAndView("portal/getPlayers");
		model.addObject("players", players);
		return model;
		
	}
	
	@RequestMapping("portal/managerLog")
	public ModelAndView managerLog() {
		List<Player> players = playerService.getAllPlayers();
		System.out.println(players);
		ModelAndView model = new ModelAndView("portal/managerLog");
		model.addObject("players", players);
		return model;
	}

	@RequestMapping("portal/playerLog")
	public ModelAndView playerLog() {
		List<Player> players = playerService.getAllPlayers();
		System.out.println(players);
		ModelAndView model = new ModelAndView("portal/playerLog");
		model.addObject("players", players);
		return model;
	}
}
