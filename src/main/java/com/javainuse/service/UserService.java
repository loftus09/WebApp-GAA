package com.javainuse.service;

import com.javainuse.model.Role;
import com.javainuse.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
    
    Role findRoleByName(String rolename);
}