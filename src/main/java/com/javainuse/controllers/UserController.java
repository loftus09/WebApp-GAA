package com.javainuse.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.javainuse.config.UserValidator;
import com.javainuse.model.Role;
import com.javainuse.model.User;
import com.javainuse.repositories.RoleRepository;
import com.javainuse.service.SecurityService;
import com.javainuse.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;
    
    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("portal/registration")
    public ModelAndView registration() {
    	ModelAndView model = new ModelAndView("portal/registration");
    	
        model.addObject("userForm", new User());
        //model.addObject("roles", roles.stream().map(Role::getName).collect(Collectors.toList()));
        return model;
    }

    @ModelAttribute("roles")
    public List<String> getRoles() {
      
    	List<Role> roles = roleRepository.findAll();
    	
    	return roles.stream().map(Role::getName).collect(Collectors.toList());
    }
    @PostMapping("portal/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "portal/registration";
        }
        
        Role selectedrole=userService.findRoleByName(userForm.getSelectedRole());
        userForm.setRoles(Arrays.asList(selectedrole));
        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/portal/welcome";
    }

    @GetMapping("portal/login")
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "portal/login";
    }

    @GetMapping("portal/welcome")
    public String welcome(Model model) {
        return "portal/welcome";
    }
    
    @GetMapping("portal/")
    public String mainPortal(Model model) {
        return "portal/welcome";
    }
    
    @GetMapping("portal/MensPanel")
    public String MensPanel(Model model) {
        return "portal/MensPanel";
    }
    @GetMapping("portal/LadiesPanel")
    public String LadiesPanel(Model model) {
        return "portal/LadiesPanel";
    }
    @GetMapping("portal/U21Panel")
    public String U21Panel(Model model) {
        return "portal/U21Panel";
    }
    
    
}