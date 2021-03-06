package com.javainuse.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class FileUploadController {

	public static String UPLOADED_FOLDER = "src/main/webapp/images/uploads/";
	public static String NEWS_UPLOADED_FOLDER ="src/main/webapp/images/uploads/news/";
	
	 @PostMapping("portal/upload") // //new annotation since 4.3
	    public String singleFileUpload(Model model, @RequestParam("files") MultipartFile[] files,
	    		
                RedirectAttributes redirectAttributes ) {

		 StringBuilder fileNames=new StringBuilder();
		 if (files.length==0) {
	            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
	            return "redirect:/portal/uploadStatus";
	        }
		 try
		 {
			 for(MultipartFile file:files)
			 {
				  byte[] bytes = file.getBytes();
				    Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
				    Files.write(path, bytes);
			 } 
		 }
		 catch (IOException e) {
	            e.printStackTrace();
	        }

		 model.addAttribute("msg","Sucessfully uploaded"+fileNames.toString());
		return "portal/uploadStatus";
		 }

	    @GetMapping("portal/uploadStatus")
	    public String uploadStatus() {
	        return "portal/uploadStatus";
	    }
}
