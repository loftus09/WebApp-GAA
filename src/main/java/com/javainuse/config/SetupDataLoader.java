package com.javainuse.config;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

//import com.javainuse.model.Privilege;
import com.javainuse.model.Role;
import com.javainuse.model.User;
//import com.javainuse.repositories.PrivilegeRepository;
import com.javainuse.repositories.RoleRepository;
import com.javainuse.repositories.UserRepository;

@Component
public class SetupDataLoader implements
  ApplicationListener<ContextRefreshedEvent> {
 
    boolean alreadySetup = false;
 
    @Autowired
    private UserRepository userRepository;
  
    @Autowired
    private RoleRepository roleRepository;
  
//    @Autowired
//    private PrivilegeRepository privilegeRepository;
//  
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
    
 
  
    @Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {
  
        if (alreadySetup)
            return;
//        Privilege readPrivilege
//          = createPrivilegeIfNotFound("READ_PRIVILEGE");
//        Privilege writePrivilege
//          = createPrivilegeIfNotFound("WRITE_PRIVILEGE");
//  
//        List<Privilege> adminPrivileges = Arrays.asList(
//          readPrivilege, writePrivilege);        
        createRoleIfNotFound("ROLE_ADMIN");
        createRoleIfNotFound("ROLE_USER");//Arrays.asList(null));
        createRoleIfNotFound("ROLE_MANAGER");
        
        
        Role adminRole = roleRepository.findByName("ROLE_ADMIN");
        User user1=userRepository.findByUsername("admin");
        
        if(user1!=null && !user1.getUsername().equals("admin"))
        {
        
        User user = new User();
        user.setUsername("admin");
     
        user.setPassword(passwordEncoder.encode("admin"));
      
        user.setRoles(Arrays.asList(adminRole));
        
        userRepository.save(user);
        }
 
        alreadySetup = true;
    }
 
//    @Transactional
//    private Privilege createPrivilegeIfNotFound(String name) {
//  
//        Privilege privilege = privilegeRepository.findByName(name);
//        if (privilege == null) {
//            privilege = new Privilege(name);
//            privilegeRepository.save(privilege);
//        }
//        return privilege;
//    }
 
    @Transactional
    private Role createRoleIfNotFound(
      String name) {
  
        Role role = roleRepository.findByName(name);
        if (role == null) {
            role = new Role();
            role.setName(name);
          //  role.setPrivileges(privileges);
            roleRepository.save(role);
        }
        return role;
    }
}