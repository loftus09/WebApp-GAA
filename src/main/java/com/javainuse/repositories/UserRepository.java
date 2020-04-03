package com.javainuse.repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import com.javainuse.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
