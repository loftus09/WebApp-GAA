package com.javainuse.service.impl;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.javainuse.model.Email;

@Service
public class EmailServiceImpl {
	private JavaMailSender javaMailSender;

    public EmailServiceImpl(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendMail(Email mail) {

         SimpleMailMessage mailMessage = new SimpleMailMessage();

        mailMessage.setTo("sarwarazhar55@gmail.com");
        mailMessage.setSubject(mail.getSubject());
        mailMessage.setText("Email From: "+mail.getFromAddress()+"\n"+"Message: "+mail.getMessage());
        
        mailMessage.setFrom(mail.getFromAddress());

        javaMailSender.send(mailMessage);
    }
}
