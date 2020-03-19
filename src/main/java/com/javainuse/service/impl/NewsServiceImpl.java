package com.javainuse.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javainuse.model.News;

import com.javainuse.repositories.NewsRepository;
import com.javainuse.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	NewsRepository newsRepository;

	@Override
	public void insertNews(News news) {
		
		newsRepository.save(news);
	}

	@Override
	public List<News> getAllNews() {
		List<News> news = new ArrayList<>();
		newsRepository.findAll().forEach(news::add);
		    return news;
	}

	@Override
	public void getNewsById(int newsId) {
		// TODO Auto-generated method stub
		newsRepository.findOne((long) newsId);
	}

	@Override
	public List<News> getNewsByAuthorName(String author) {
		return newsRepository.findByAuthor(author).get();
	}

}
