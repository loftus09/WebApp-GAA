package com.javainuse.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;

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

import com.javainuse.model.Email;
import com.javainuse.model.Employee;
import com.javainuse.model.News;
import com.javainuse.model.Player;
import com.javainuse.service.EmployeeService;
import com.javainuse.service.NewsService;
import com.javainuse.service.PlayerService;

@Controller
public class NewsController {


	@Autowired
	ServletContext context;
	
	
	@Autowired
	NewsService newsService;

	
	@RequestMapping("/news")
	public ModelAndView NewsPage() {
		
		List<News> news= newsService.getAllNews();
		ModelAndView model = new ModelAndView("News1");
		model.addObject("news", news);
		return model;
	
	}
	
	
	@RequestMapping(value = "/addNewNews", method = RequestMethod.GET)
	public ModelAndView show() {
		return new ModelAndView("addNews", "news", new News());
	}


	@RequestMapping(value = "/addNewNews", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("news") News news,@RequestParam("files") MultipartFile file,
    		
            RedirectAttributes redirectAttributes ) throws IOException {
		 ModelAndView model = new ModelAndView("uploadStatus");
		 if (file.isEmpty()) {
	            
	             model = new ModelAndView("uploadStatus");
	            model.addObject("msg", "Please select a file to upload");
	            return model;
	        }
		 
		  String filePath=FileUploadController.NEWS_UPLOADED_FOLDER + file.getOriginalFilename();
		  Path path = Paths.get(filePath);
		 
		  news.setPicturePath(filePath.split("webapp")[1]);
		newsService.insertNews(news);
		
		  byte[] bytes = file.getBytes();
		    Files.write(path, bytes);
		
		 model = new ModelAndView("uploadStatus");
	
		 model.addObject("msg","News Sucessfully uploaded");
		return model;
		
	}



	
}
