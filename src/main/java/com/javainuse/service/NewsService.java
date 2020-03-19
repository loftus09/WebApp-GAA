package com.javainuse.service;

import java.util.List;

import com.javainuse.model.Employee;
import com.javainuse.model.News;
import com.javainuse.model.Player;

public interface NewsService {
	void insertNews(News news);
	
	List<News> getAllNews();
	void getNewsById(int newsId);
	List<News> getNewsByAuthorName(String author);
}