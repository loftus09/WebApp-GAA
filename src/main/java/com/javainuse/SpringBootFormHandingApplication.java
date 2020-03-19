package com.javainuse;

import java.io.File;

import org.apache.tomcat.util.http.fileupload.FileUpload;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.javainuse.controllers.FileUploadController;

@EnableAutoConfiguration
@ComponentScan
@SpringBootApplication
public class SpringBootFormHandingApplication {

	public static void main(String[] args) {
		
		new File(FileUploadController.UPLOADED_FOLDER).mkdir();
		new File(FileUploadController.NEWS_UPLOADED_FOLDER).mkdir();
		
		SpringApplication.run(SpringBootFormHandingApplication.class, args);
	}
}