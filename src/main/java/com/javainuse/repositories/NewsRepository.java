package com.javainuse.repositories;

import org.springframework.stereotype.Repository;

import com.javainuse.model.News;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;


@Repository
public interface NewsRepository extends CrudRepository<News,Long>{

	Optional<List<News>> findByAuthor(String author);
	
	
}
