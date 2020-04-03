package com.javainuse.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javainuse.model.Email;
import com.javainuse.model.Player;
import com.javainuse.service.impl.EmailServiceImpl;


@Controller
public class EmailController {

	@Autowired
	EmailServiceImpl emailService;

	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	public ModelAndView processRequest(@ModelAttribute("mail") Email mail,

			RedirectAttributes redirectAttributes ) {
		ModelAndView model = new ModelAndView("home/uploadStatus");
		
		emailService.sendMail(mail);

		model = new ModelAndView("home/uploadStatus");
		model.addObject("msg","Email Send Sucessfully ");
		return model;

	}
}
