package com.javainuse.repositories;

import org.springframework.stereotype.Repository;

import com.javainuse.model.Player;


import org.springframework.data.repository.CrudRepository;


@Repository
public interface PlayerRepository extends CrudRepository<Player,Long>{

}
