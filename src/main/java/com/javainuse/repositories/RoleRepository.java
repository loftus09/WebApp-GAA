package com.javainuse.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.javainuse.model.Role;
import com.javainuse.model.User;

public interface RoleRepository extends JpaRepository<Role, Long>{
	
	Role findByName(String name);
}