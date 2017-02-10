package com.hotdog.petcam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotdog.petcam.repository.NewsFeedDao;
import com.hotdog.petcam.vo.NewsVo;

@Service
public class NewsFeedService {
	@Autowired private NewsFeedDao newsfeedDao;
	
	public List<NewsVo> latestNews(int authUser_no){
		return newsfeedDao.latestNews(authUser_no);
	}
	public List<NewsVo> topTen(int authUser_no){
		return newsfeedDao.topTen(authUser_no);
	}
	
}
